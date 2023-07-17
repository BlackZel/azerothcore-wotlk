#include "Language.h"
#include "Chat.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "GameTime.h"
//#include "AuctionHouseMgr.h"

#define EMOTE_NO_VIP "Доступно только VIP игрокам. Приобретается в ЛК."
#define EMOTE_ZONE_VIP "На текущий момент команда недоступна! Попробуйте позже."
using namespace Acore::ChatCommands;

class premium_commandscript : public CommandScript
{
public:
    premium_commandscript() : CommandScript("premium_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable premiumCommandTable =
        {
            { "bank", HandlePremiumBankCommand, SEC_PLAYER, Console::No},
            { "mail", HandlePremiumMailCommand, SEC_PLAYER, Console::No},
            { "buff", HandleVIPBuffCommand, SEC_PLAYER, Console::No},
         //   { "inst", HandleInstanceVIPUnbindCommand, SEC_PLAYER, Console::No},
        };

        static ChatCommandTable commandTable =
        {
            { "vip", SEC_PLAYER, false, NULL, "", premiumCommandTable },
        };

        return commandTable;
    }

    static bool HandlePremiumBankCommand(ChatHandler* handler, char const* /*args*/)
    {
        Player *player = handler->GetSession()->GetPlayer();
        if (player->GetSession()->IsPremium() && sWorld->getBoolConfig(COMMAND_BANK_PREMIUM))
        {
            //Different Checks
            if (player->IsInCombat() || player->IsInFlight() || player->GetMap()->IsBattlegroundOrArena() || player->HasStealthAura() || player->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || player->isDead())
            {
                handler->SendSysMessage(EMOTE_ZONE_VIP);
                handler->SetSentErrorMessage(true);
                return false;
            }

            if (player->getLevel() < 30)
            {
                handler->SendSysMessage("Банк доступен с 30-го уровня.");
                handler->SetSentErrorMessage(true);
                return false;
            }
            handler->GetSession()->SendShowBank(handler->GetSession()->GetPlayer()->GetGUID());
        }
        else
            handler->SendSysMessage(EMOTE_NO_VIP);
            handler->SetSentErrorMessage(true);
        return true;
    }

    static bool HandlePremiumMailCommand(ChatHandler* handler)
    {
        Player* player = handler->GetSession()->GetPlayer();
        if (player->GetSession()->IsPremium() && sWorld->getBoolConfig(COMMAND_MAIL_PREMIUM))
        {
            if (player->IsInCombat() || player->IsInFlight() || player->GetMap()->IsBattlegroundOrArena() || player->HasStealthAura() || player->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || player->isDead())
            {
                handler->SendSysMessage(EMOTE_ZONE_VIP);
                handler->SetSentErrorMessage(true);
                return false;
            }
        handler->GetSession()->SendShowMailBox(player->GetGUID());
        return true;
        }
        else
            handler->SendSysMessage(EMOTE_NO_VIP);
            handler->SetSentErrorMessage(true);
        return false;
    }

    static bool HandleVIPBuffCommand(ChatHandler* handler, char const* /*args*/)
    {
        Player* player = handler->GetSession()->GetPlayer();
        if (handler->GetSession()->IsPremium())
        {
            if (player->getLevel() >= 30)
            {
                player->CastSpell(player, 48162, true);
                player->CastSpell(player, 48074, true);
                player->CastSpell(player, 48170, true);
                player->CastSpell(player, 43223, true);
                player->CastSpell(player, 43015, true);
                player->CastSpell(player, 43017, true);
                player->CastSpell(player, 69381, true);
                player->CastSpell(player, 36880, true);
            }
            else
            {
                player->CastSpell(player, 467, true);
                player->CastSpell(player, 20217, true);
                handler->SendSysMessage("Больше баффов откроется на 30-м уровне.");
            }
        }
        else
            handler->SendSysMessage(EMOTE_NO_VIP);
            handler->SetSentErrorMessage(true);
        return true;
    }

    static bool HandleInstanceVIPUnbindCommand(ChatHandler* handler, Variant<uint16, EXACT_SEQUENCE("all")> mapArg, Optional<uint8> difficultyArg)
    {
        Player* player = handler->getSelectedPlayer();
        if (!player)
            player = handler->GetSession()->GetPlayer();

        uint16 counter = 0;
        uint16 mapId = 0;

        if (!player->GetSession()->IsPremium())
        {
            handler->SendSysMessage(EMOTE_NO_VIP);
            handler->SetSentErrorMessage(true);
            return false;
        }

        if (mapArg.holds_alternative<uint16>())
        {
            mapId = mapArg.get<uint16>();
            if (!mapId)
                return false;
        }

        for (uint8 i = 0; i < MAX_DIFFICULTY; ++i)
        {
            BoundInstancesMap const& m_boundInstances = sInstanceSaveMgr->PlayerGetBoundInstances(player->GetGUID(), Difficulty(i));
            for (BoundInstancesMap::const_iterator itr = m_boundInstances.begin(); itr != m_boundInstances.end();)
            {
                InstanceSave const* save = itr->second.save;
                if (itr->first != player->GetMapId() && (!mapId || mapId == itr->first) && (!difficultyArg || difficultyArg == save->GetDifficulty()))
                {
                    uint32 resetTime = itr->second.extended ? save->GetExtendedResetTime() : save->GetResetTime();
                    uint32 ttr = (resetTime >= GameTime::GetGameTime().count() ? resetTime - GameTime::GetGameTime().count() : 0);
                    std::string timeleft = secsToTimeString(ttr);
                    handler->PSendSysMessage("unbinding map: %d, inst: %d, perm: %s, diff: %d, canReset: %s, TTR: %s%s", itr->first, save->GetInstanceId(), itr->second.perm ? "yes" : "no", save->GetDifficulty(), save->CanReset() ? "yes" : "no", timeleft.c_str(), (itr->second.extended ? " (extended)" : ""));
                    sInstanceSaveMgr->PlayerUnbindInstance(player->GetGUID(), itr->first, Difficulty(i), true, player);
                    itr = m_boundInstances.begin();
                    counter++;
                }
                else
                    ++itr;
            }
        }

        handler->PSendSysMessage("instances unbound: %d", counter);

        return true;
    }

    //static bool HandlePremiumAuctionCommand(ChatHandler* handler, char const* /*args*/)
    //{
        //Player* player = handler->GetSession()->GetPlayer();
        //if(player->GetSession()->IsPremium())
        //{
            //Different Checks
            //if(player->IsInCombat() || player->IsInFlight() || player->GetMap()->IsBattlegroundOrArena() || player->HasStealthAura() || player->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || player->isDead())
            //{
            //    handler->SendSysMessage(LANG_PREMIUM_CANT_DO);
            //    handler->SetSentErrorMessage(true);
            //    return false;
            //}

            //handler->GetSession()->SendAuctionHello(player->GetGUID());
            //handler->GetSession()->SendAuctionHello(player->getFaction());

        //}
        //return true;
    //}

};

void AddSC_premium_commandscript()
{
    new premium_commandscript();
}

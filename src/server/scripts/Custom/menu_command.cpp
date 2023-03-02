/*
    Simple script by Tommy (Easelm) (QQrofl)
	WoWEmu.org
*/

#include "ScriptMgr.h"
#include "Chat.h"
#include "Player.h"
#include "ScriptedGossip.h"

using namespace Acore::ChatCommands;

#define GOSSIP_EVENT_TEST_STR                    "Test Menu"
#define GOSSIP_EVENT_EXIT_STR                    "Close Menu"

enum GossipEventIds
{
    GOSSIP_EVENT_TEST           = GOSSIP_ACTION_INFO_DEF + 1,
    GOSSIP_EVENT_CLOSE          = GOSSIP_ACTION_INFO_DEF + 2
};

class maingossipmenu : public PlayerScript
{
public:
    maingossipmenu() : PlayerScript("maingossipmenu") { }

    void OnGossipSelect(Player* player, uint32 menu_id, uint32 sender, uint32 action) override
    {
        ClearGossipMenuFor(player);
        switch (action)
        {
        case GOSSIP_EVENT_TEST:
            SendMessage(player, "This is a test menu option");
            break;
        case GOSSIP_EVENT_CLOSE:
            CloseGossipMenuFor(player);
            break;
        }
    }

    void SendMessage(Player* player, std::string msg)
    {
        ChatHandler(player->GetSession()).SendSysMessage(msg);
    }
};

class menugossip_commandscript : public CommandScript
{
public:
    menugossip_commandscript() : CommandScript("menugossip_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable listCommandTable =
        {
            { "", HandleMenuCommand, SEC_PLAYER, Console::No }
        };

        static ChatCommandTable commandTable =
        {
            { "menu", listCommandTable }
        };
        return commandTable;
    }

    static bool HandleMenuCommand(ChatHandler* handler)
    {
        if (Player* player = handler->GetPlayer())
        {
            AddGossipItemFor(player, 0, GOSSIP_EVENT_TEST_STR, GOSSIP_SENDER_MAIN, GOSSIP_EVENT_TEST);
            AddGossipItemFor(player, 9733, GOSSIP_EVENT_EXIT_STR, GOSSIP_SENDER_MAIN, GOSSIP_EVENT_CLOSE);
            SendGossipMenuFor(player, player->GetGossipTextId(player), player->GetGUID());
        }
        return true;
    }
};

void AddSC_CustomMenuScripts()
{
    new menugossip_commandscript();
    new maingossipmenu();
}

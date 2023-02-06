     
#include "ScriptPCH.h"
#include "ScriptMgr.h"
#include "Config.h"
#include "World.h"
     
    class announce_login : public PlayerScript
    {
    public:
        announce_login() : PlayerScript("announce_login") { }
     
        void OnLogin(Player* player)
        {
            if (sConfigMgr->GetOption<bool>("NewPlayer.Login.Announce", true))
            {
                if (player->GetTeamId() == TEAM_ALLIANCE)
                {
                    std::ostringstream ss;
                    ss << "|CFFFE8A0EПриветствуем нового игрока|r: |CFFE55BB0" << player->GetName() << "|r|CFFFE8A0E Фракция|r:" "|CFF0042FF Альянс |r";
                    sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
                }
                else
                {
                    std::ostringstream ss;
                    ss << "|CFFFE8A0EПриветствуем нового игрока|r: |CFFE55BB0" << player->GetName() << "|r|CFFFE8A0E Фракция|r:" "|CFFFF0303 Орда |r";
                    sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
                }
            }
        }
            
    };
     
    void AddSC_announce_login()
    {
        new announce_login;
    }  

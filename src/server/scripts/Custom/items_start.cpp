class New_Character : public PlayerScript
{
public:
	New_Character() : PlayerScript("New_Character") {}

	void OnLogin(Player* player)
	{
       // Выдача петов 
		if (player->GetTotalPlayedTime() < 1)
		{          				
            player->learnSpell(55068); // trans
            player->learnSpell(61357); // vip
		}
	}
};

	void AddSC_New_Character()
	{
		new New_Character();
	}

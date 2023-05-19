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
            player->EquipNewItem(INVENTORY_SLOT_BAG_1, 1623, true); // Сумка 1
		}

        // видача свитка vip
        if (player->GetSession()->IsPremium())
        {
            if (!player->HasItemCount(34104, 1))
            {
                player->AddItem(34104, 1);
            }
        }
        else
        {
            player->DestroyItemCount(34104, 1, true);
        }
	}

    void OnLevelChanged(Player* player, uint8 oldLevel) override
    {
        /* Выдача свитка для фамилек */
        if (oldLevel == 29)
        {
            player->AddItem(34103, 1); 
        }
        if (oldLevel == 69 && player->getClass() == CLASS_DEATH_KNIGHT)
        {
            player->AddItem(34103, 1);
        }
    }
};

	void AddSC_New_Character()
	{
		new New_Character();
	}

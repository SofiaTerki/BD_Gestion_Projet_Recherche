/*Script SQL qui donne une fois exécuté la liste de
tous les triggers définis, classés par nom de table.*/
Select TABLE_NAME, TRIGGER_NAME, TRIGGER_TYPE, TRIGGERING_EVENT
From user_triggers
Order by Table_name

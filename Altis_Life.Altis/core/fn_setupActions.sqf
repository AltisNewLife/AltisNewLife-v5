/*
    File: fn_setupActions.sqf
    Author:

    Description:
    Master addAction file handler for all client-based actions.
*/
switch (playerSide) do {
    case civilian: {
        //Drop fishing net
        life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
        (surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
        //Rob person
        life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable ["robbed",false]) ']];
    };
};

		//Custom Sitdown
		life_actions = life_actions + [player addAction["S'assoir",{[cursorObject,player] execVM "core\functions\sitdown.sqf"},true,1,true,true,"""",'player distance cursorObject < 2.5 && (_curTarget isKindOf "Land_ChairPlastic_F" or _curTarget isKindOf "Land_CampingChair_V1_F" or _curTarget isKindOf "Land_CampingChair_V2_F" or _curTarget isKindOf "Land_ChairWood_F" or _curTarget isKindOf "Land_OfficeChair_01_F" or _curTarget isKindOf "Land_Bench_F")']];
		

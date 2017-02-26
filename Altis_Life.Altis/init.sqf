/*
    File: init.sqf
    Author: 
    
    Description:
    
*/
StartProgress = false;

if (hasInterface) then {
    [] execVM "briefing.sqf"; //Load Briefing
};
[] execVM "KRON_Strings.sqf";

// Custom sitdown
MAC_fnc_switchMove = {
 private _object = _this select 0;
 private _anim = _this select 1;
 _object switchMove _anim;
};

StartProgress = true;

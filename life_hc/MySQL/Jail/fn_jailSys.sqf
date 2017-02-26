#include "\life_hc\hc_macros.hpp"
/*
    File: fn_jailSys.sqf
    Author: Bryan "Tonic" Boardwine

    This file is for Nanou's HeadlessClient.

    Description:
    I forget?
*/
private _unit = param [0,objNull,[objNull]];
if (isNull _unit) exitWith {};
private _bad = param [1,false,[false]];

private _ret = [_unit] call HC_fnc_wantedPerson;
[_ret,_bad] remoteExec ["life_fnc_jailMe",_unit];
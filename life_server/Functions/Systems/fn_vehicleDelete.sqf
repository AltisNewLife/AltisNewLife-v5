/*
    File: fn_vehicleDelete.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Doesn't actually delete since we don't give our DB user that type of
    access so instead we set it to alive=0 so it never shows again.
*/
private ["_query","_thread"];
params [
  ["_vid",-1,[0]],
  ["_pid","",[""]],
  ["_sp",2500,[0]],
  ["_unit",objNull,[objNull]],
  ["_type","",[""]]
];

if (_vid isEqualTo -1 || _pid isEqualTo "" || _sp isEqualTo 0 || isNull _unit || _type isEqualTo "") exitWith {};
_unit = owner _unit;

_query = format ["UPDATE vehicles SET alive='0' WHERE pid='%1' AND id='%2'",_pid,_vid];

_thread = [_query,1] call DB_fnc_asyncCall;
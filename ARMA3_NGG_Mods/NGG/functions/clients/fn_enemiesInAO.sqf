/*
NGG_fnc_enemiesInAO created by Bryson Varner Aka. Anti

Instructions:
to be used in a trigger placed in editor and set to any needed size.
Trigger set as "Player Present" and "Repeating".
Inside the "on Act" line :

	0 = [thisTrigger] spawn NGG_fnc_enemiesInAO;

Will check for enemies every 20 seconds and display the counter.
Will display "All Enemies Cleared!" every minute after enemies are killed until leaving the trigger area.
*/
if (isDedicated) exitWith {};

if (!hasInterface) exitWith {};

private ["_trigger","_blInAO","_opInAO","_inInAO","_executeTime","_realTickTime","_ticksBegin","_ticksEnd","_ticksEndLoop"];

_trigger = _this select 0;

while {(alive player && player inArea _trigger)} do 
{
sleep 10;
_inInAO = {[_trigger, _x] call BIS_fnc_inTrigger && (side _x) == independent && alive _x} count AllUnits;
_opInAO = {[_trigger, _x] call BIS_fnc_inTrigger && (side _x) == east && alive _x} count AllUnits;
_blInAO = {[_trigger, _x] call BIS_fnc_inTrigger && (side _x) == west && alive _x} count AllUnits;

if (playerSide == west) then 
{
	if (_opInAO >= 1 or _inInAO >=1) then 
		{
		systemChat format ["CSAT Units alive: %1", _opInAO];
		sleep 10;
		systemChat format ["Independent Units alive: %1", _inInAO];
		};
	if (_opInAO == 0 && _inInAO == 0) exitWith 
		{
		systemChat "All Enemies Cleared!";
		sleep 60;
		};
};

if (playerSide == east) then 
{
	if (_blInAO >= 1 or _inInAO >=1) then 
		{
		systemChat format ["NATO Units alive: %1", _blInAO];
		sleep 10;
		systemChat format ["Independent Units alive: %1", _inInAO];		
		};
	if (_blInAO == 0 && _inInAO == 0) exitWith 
		{
		systemChat "All Enemies Cleared!";
		sleep 60;
		};
}; 

if (playerSide == independent) then 
{
	if (_blInAO >= 1 or _opInAO >=1) then 
		{
		systemChat format ["NATO Units alive: %1" , _blInAO];
		sleep 10;
		systemChat format ["CSAT Units alive: %1", _opInAO];
		};
	if (_blInAO == 0 && _opInAO == 0) exitWith 
		{
		systemChat "All Enemies Cleared!";
		sleep 60;
		};
}; 

};



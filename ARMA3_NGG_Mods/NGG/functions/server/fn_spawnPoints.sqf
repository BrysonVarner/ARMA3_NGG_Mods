/*
NGG_fnc_spawnPoints created by Bryson Varner Aka. Anti

Instructions:

Use this script by adding to the on act line of trigger: 
0 = [thisTrigger, *?"AO Name"*?] spawn NGG_fnc_spawnPoints;
set trigger as activated by anyone present, repeatable.
"_locNameStr","_locName", removed due to bug
*/

private ["_trigger","_aoSize","_safeLoc","_bl","_op","_in","_markerCiv","_markerBlu","_markerOpf","_markerInd","_spawnMkr","_id"];

_trigger = _this select 0;  //"thisTrigger" is first array object
//_locName = _this select 1;  //Name of AO
//_locNameStr = format ["%1", _locName];
_locSize = triggerArea _trigger select 0;
_safeLoc = [_trigger, 15, _locSize, 5, 0, 15, 0] call BIS_fnc_findSafePos;
_id = "";
_spawnMkr = "";
NGG_SPcreate = true;
publicVariable "NGG_SPcreate"; 


[civilian, _id] call BIS_fnc_removeRespawnPosition; //Try to eliminate duplicates
[west, _id] call BIS_fnc_removeRespawnPosition;
[east, _id] call BIS_fnc_removeRespawnPosition;
[independent, _id] call BIS_fnc_removeRespawnPosition;
deleteMarker _spawnMkr;
_newSpn = [civilian, _safeLoc] call BIS_fnc_addRespawnPosition; //create unused civilian spawnPoint
_markerCiv = createMarker [("CIV_spawnMkr_#" + str _id),_safeLoc];
_markerCiv setMarkerType "respawn_inf";
_markerCiv setMarkerColor "ColorCIV";
_markerCiv setMarkerSize [0.7,0.7];
_spawnMkr = ("CIV_spawnMkr_#" + str _id) ;
_id = _newSpn select 1;

while {NGG_SPcreate} do {

sleep (90 + (random 90));

_bl = {[_trigger, _x] call BIS_fnc_inTrigger && side _x == west && alive _x} count allUnits;
_op = {[_trigger, _x] call BIS_fnc_inTrigger && side _x == east && alive _x} count allUnits;
_in = {[_trigger, _x] call BIS_fnc_inTrigger && side _x == independent && alive _x} count allUnits;

if (_bl > _op + _in) then {

[civilian, _id] call BIS_fnc_removeRespawnPosition;
[west, _id] call BIS_fnc_removeRespawnPosition;
[east, _id] call BIS_fnc_removeRespawnPosition;
[independent, _id] call BIS_fnc_removeRespawnPosition;
deleteMarker _spawnMkr;
_newSpn = [west, _safeLoc] call BIS_fnc_addRespawnPosition;
_markerBlu = createMarker [("WEST_spawnMkr_#" + str _id),_safeLoc];
_markerBlu setMarkerType "respawn_inf";
_markerBlu setMarkerColor "ColorWEST";
_markerBlu setMarkerSize [0.7,0.7];
_spawnMkr = ("WEST_spawnMkr_#" + str _id);
_id = _newSpn select 1;
//hint format ["NATO units have occupied %1!", _locName];
[west, "HQ"] sideChat "New Respawn Location Created";
sleep 180;
};

if (_op > _bl + _in) then {

[civilian, _id] call BIS_fnc_removeRespawnPosition;
[west, _id] call BIS_fnc_removeRespawnPosition;
[east, _id] call BIS_fnc_removeRespawnPosition;
[independent, _id] call BIS_fnc_removeRespawnPosition;
deleteMarker _spawnMkr;
_newSpn = [east, _safeLoc] call BIS_fnc_addRespawnPosition;
_markerOpf = createMarker [("EAST_spawnMkr_#" + str _id),_safeLoc];
_markerOpf setMarkerType "respawn_inf";
_markerOpf setMarkerColor "ColorEAST";
_markerOpf setMarkerSize [0.7,0.7];
_spawnMkr = ("EAST_spawnMkr_#" + str _id);
_id = _newSpn select 1;
//hint format ["CSAT units have occupied %1!", _locName];
[east, "HQ"] sideChat "New Respawn Location Created";
sleep 180;
};

if (_in > _bl + _op) then {

[civilian, _id] call BIS_fnc_removeRespawnPosition;
[west, _id] call BIS_fnc_removeRespawnPosition;
[east, _id] call BIS_fnc_removeRespawnPosition;
[independent, _id] call BIS_fnc_removeRespawnPosition;
deleteMarker _spawnMkr;
_newSpn = [independent, _safeLoc] call BIS_fnc_addRespawnPosition;
_markerInd = createMarker [("GUER_spawnMkr_#" + str _id),_safeLoc];
_markerInd setMarkerType "respawn_inf";
_markerInd setMarkerColor "ColorGUER";
_markerInd setMarkerSize [0.7,0.7];
_spawnMkr = ("GUER_spawnMkr_#" + str _id);
_id = _newSpn select 1;
//hint format ["Independent units have occupied %1!", _locName];
[independent, "HQ"] sideChat "New Respawn Location Created";
sleep 180;
};


};
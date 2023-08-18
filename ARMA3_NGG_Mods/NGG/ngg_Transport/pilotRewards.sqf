/*
pilotRewards.sqf created by Contrathiest aka. Trenchcoat of Necessary Genocide Gaming on 2.2.2020
purpose: to reward pilots for performing pilot duties and balance points with successfully delivered combatants
Created to function with Warlords Missions, but can be configured for many uses. To change rewards, edit the information below the rewards line
break in the endTransport.sqf

Instructions: add to init.sqf or initPlayerLocal.sqf :  [] execVM "scripts\ngg_Transport\pilotRewards.sqf";


*/




		
player addEventHandler ["GetInMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
		
	private ["_vehiclesArr","_unit","_role","_vehicle", "_pilot"];
	_vehiclesArr = ["B_Heli_Light_01_F", "B_Heli_Transport_01_F", "B_Heli_Transport_03_F", "B_T_VTOL_01_armed_F", "O_Heli_Light_02_unarmed_F", "O_Heli_Transport_04_covered_F", "O_T_VTOL_02_infantry_dynamicLoadout_F"];
	_unit = _this select 0;
	_role = _this select 1;
	_vehicle = _this select 2;
	_pilot = driver _vehicle;
	
		
	if ((typeOf _vehicle) in _vehiclesArr && player == driver _vehicle) then {
	
	NGG_Transport = false;
		
	NGG_TransportBegin =
	[_vehicle, 
	[
    "<t size=""1.2"" font=""RobotoCondensedBold"" color=""#FF0000"">" + "Begin Transport", 
 
  {
        params ["_target", "_caller", "_actionId", "_arguments"];		
		private _target = _this select 0;
		private _caller = _this select 1;
		private _actionId = _this select 2;
				
		_this execVM "NGG\ngg_Transport\beginTransport.sqf";		
		[_target, _actionid] remoteExec ["removeAction"];	
	},[], 1.5,true,true,"","true",8,false,"",""
]] remoteExec ["addAction"];

};	
}];

publicVariable "NGG_Transport";
publicVariable "NGG_TransportBegin";
publicVariable "NGG_TransportEnd";

player addEventHandler ["GetOutMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	
if ((typeOf _vehicle) in _vehiclesArr && player == driver _vehicle) then {
NGG_Transport = false;
systemchat "Getting Out";
};	
	
	private "_vehicle";
	_vehicle = _this select 2;
	_vehicle remoteExec [ "RemoveAllActions",0,true];
}];

	
		
	
	
	






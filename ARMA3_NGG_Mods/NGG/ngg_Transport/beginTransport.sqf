/*
 beginTransport.sqf script created by: Contrathiest Aka. Trenchcoat of Necessary Genocide Gaming on 2.2.2020
 part 2 of pilotRewards.sqf
*/

private ["_vehicle", "_startLoc","_vehID","_startPass"];

_vehicle = _this select 0;
_pilot = driver _vehicle;
_vehID = group _pilot;
	
	NGG_Transport = true;
	_startLoc = getPosATL _vehicle;       //Where vehicle loaded
	_startPass = count fullCrew [_vehicle,"",false];
	_vehicle setVariable ["stPsgr", _startpass];
	_vehicle setVariable ["stLoc", _startLoc];
	
	systemChat format ["Vehicle Departed with %1 passengers.", _startPass];
	
NGG_TransportEnd = 
[_vehicle, 
[
"<t size=""1.2"" font=""RobotoCondensedBold"" color=""#FF0000"">" + "End Transport",
  {
        params ["_target", "_caller", "_actionId", "_variables"];		
		private _target = _this select 0;
		private _caller = _this select 1;
		private _actionId = _this select 2; 
		
		_this execVM "NGG\ngg_Transport\endTransport.sqf";		
		[_target, _actionid] remoteExec ["removeAction"];		
	},[], 1.5,true,true,"","true",8,false,"",""
]] remoteExec ["addAction"];

	
	
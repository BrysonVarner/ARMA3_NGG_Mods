/*
 endTransport script created by: Contrathiest Aka. Trenchcoat of Necessary Genocide Gaming on 2.2.2020
 part 3 of pilotRewards.sqf
 
 If Editing with custom Rewards, Area is marked below!
*/

private ["_vehicle", "_endLoc", "_passLeft", "_passDeliv", "_distTot", "_rewardCalcCP"];
_vehicle = _this select 0;
_pilot = driver _vehicle;
_vehID = group _pilot;
_stLoc = _vehicle getVariable "stLoc";
_stPass = _vehicle getVariable "stPsgr";
_name = name _pilot;

NGG_Transport = false;


	_endLoc = getPosATL _vehicle;	
	_passLeft = count fullCrew [_vehicle,"", false];
	_passDeliv = _stPass - _passLeft;
	_distTot = _stLoc distance _endLoc;
	[west,"HQ"] sideChat format ["%1 passengers delivered sucessfully by %2", _passDeliv, _name];
	
	//-------------------------Rewards----------------------------
	_rewardCalcCP = round ((_distTot * 0.02) * _passDeliv);
	_pilot setVariable ["BIS_WL_funds", (_pilot getVariable "BIS_WL_funds") + _rewardCalcCP, TRUE];
	if (_passDeliv >= 1) then {
	[_pilot,{_this addRating 1000}] remoteExec ["call", _pilot];
	_pilot setVariable ["ngg_tplt",(player getVariable "ngg_tplt") + 1];
	};

NGG_TransportBegin = 
[_vehicle, 
[
    "<t size=""1.2"" font=""RobotoCondensedBold"" color=""#FF0000"">" + "Begin Transport", 
 
  {
        params ["_target", "_caller", "_actionId", "_arguments"];		
		private _target = _this select 0;
		private _caller = _this select 1;
		private _actionId = _this select 2;
		
		_this execvm"NGG\ngg_Transport\beginTransport.sqf";		
		[_target, _actionid] remoteExec ["removeAction"];		
	},[], 1.5,true,true,"","true",8,false,"",""
]] remoteExec ["addAction"];


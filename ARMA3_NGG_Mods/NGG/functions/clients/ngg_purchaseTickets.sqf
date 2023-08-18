
	
		params ["_target", "_caller", "_actionId", "_arguments"];
		_funds = _caller getVariable "BIS_WL_funds";
		if (_funds >= 500) then {
		[_caller,5,false] call BIS_fnc_respawnTickets;
		_caller setVariable ["BIS_WL_funds", (_caller getVariable "BIS_WL_funds") - 500, TRUE];
		} else { hintC "You cannot afford this item"};
	
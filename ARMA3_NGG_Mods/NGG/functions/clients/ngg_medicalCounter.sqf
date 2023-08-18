if (hasInterface) then {

private ["_ngg_medicalCounter", "_newmed"];

	while {true} do {
	
	_ngg_medicalCounter = player getVariable "ngg_med";
		
		if (alive player && _ngg_medicalCounter >= 5) then {
		[player,1,false] call BIS_fnc_respawnTickets;
		systemChat "Respawn Ticket awarded";
		_newmed = ((player getVariable "ngg_med") - 5);
		player setVariable ["ngg_med", _newmed];
		
		};
	sleep 8;
	};
};


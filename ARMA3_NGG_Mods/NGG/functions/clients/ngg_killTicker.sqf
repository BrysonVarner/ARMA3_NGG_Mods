if (hasInterface) then {

private ["_newKT","_ngg_killTicker"];

	while {true} do {
	
	_ngg_killTicker = player getVariable "ngg_kT";
		
		if (alive player && _ngg_killTicker >= 5) then {
		[player,1,false] call BIS_fnc_respawnTickets;
		_newKT = ((player getVariable "ngg_kT") - 5);
		systemChat "Respawn Ticket awarded";
		player setVariable ["ngg_kT", _newKT];
		};
	
		if (alive player && _ngg_killTicker < 0) then {
		[player,-1,false] call BIS_fnc_respawnTickets;
		systemChat "Respawn Ticket Lost";
		player setVariable ["ngg_kT", 0];
		};
	sleep 7;
	};
};	


/*	

NGG_repairCounter
NGG_mineCounter

*/
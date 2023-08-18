if (hasInterface) then {

private ["_ngg_tPilotTicker", "_newtplt"];


	while {true} do {
	
	_ngg_tPilotTicker = player getVariable "ngg_tplt";
		
		if (alive player && _ngg_tPilotTicker >= 5) then {
		[player,1,false] call BIS_fnc_respawnTickets;
		systemChat "Respawn Ticket awarded";
		_newtplt = (_ngg_tPilotTicker -5);
		player setVariable ["ngg_tplt", _newtplt];
		
		};
	sleep 15;
	};
};	


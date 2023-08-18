if (hasInterface) then {

//Briefing
nul = [-1] execVM "NGG\WL_intro.sqf";

//scoreEvents
[] execVM "NGG\functions\clients\ngg_killTicker.sqf";
player setVariable ["ngg_kT", 1];
[] execVM "NGG\functions\clients\ngg_medicalCounter.sqf";
player setVariable ["ngg_med", 1];
[] execVM "NGG\functions\clients\ngg_pilotTixRW.sqf";
player setVariable ["ngg_tplt", 1];
[] execVM "NGG\ngg_Transport\pilotRewards.sqf";


[] spawn {
    while { !isDedicated } do {
        waitUntil { sleep 1; alive player};
        {
            _arr = _x splitString "_";
            _pre = _arr select 0;
            if (_pre in ["WEST","EAST","GUER","CIV"]) then {
                if (format["%1",side player] == _pre) then {
                    _x setMarkerAlphaLocal 1;
                } else {
                    _x setMarkerAlphaLocal 0;
                };
            };
            
        } count allMapMarkers;
    };
};

} else {};
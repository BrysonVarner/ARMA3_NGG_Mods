hintSilent "Please Wait, Loading";

waitUntil {time > 0};

_jip_enable	= _this select 0;

[[_jip_enable],"AL_intro\time_srv.sqf"] remoteExec ["execVM"];
waitUntil {!isNil "curr_time"};

if (!hasInterface) exitWith {};

disableSerialization;

if ((!curr_time) or (_jip_enable<0)) then {

private ["_name"];
enableRadio false;
enableEnvironment false;
sleep 1;

["newSkulls.jpg", [-0.1,-0.2,1.2,1.2], [7,7], 6, 16, [2,2], 1] spawn BIS_fnc_textTiles;

sleep 20;


[parseText "<t color='#FF0000' font='PuristaBold' size='13' align='center'>Warlords</t><br /><t color='#FFA500' font='PuristaSemibold' size='11' align='center'>Modified</t><br />by the Antiprotestant", [-0.1,-0.2,1.2,1.2],[7,7], 6, 2, 0.6] spawn BIS_fnc_textTiles;



sleep 9;


waitUntil {alive player};
playMusic "hyde";
_name=name player;


[0, 0] spawn BIS_fnc_cinemaBorder; ///this gives you the black top and bottom...

sleep 2;

1 cutRsc ["nggHUD","PLAIN"];

waitUntil {!isNull (uiNameSpace getVariable "nggHUD")};
	_display = uiNameSpace getVariable "nggHUD";
		_setText = _display displayCtrl 1001;
			
			if (playerSide == WEST) then {
			_setText ctrlSetStructuredText (parseText format ["Welcome %1!",_name]);
			_setText ctrlSetBackgroundColor [0,0,1,0.5];
			};
			if (playerSide == EAST) then {
			_setText ctrlSetStructuredText (parseText format ["Welcome %1!",_name]);
			_setText ctrlSetBackgroundColor [1,0,0,0.5];
			};
sleep 5;

			_setText ctrlSetStructuredText (parseText format ["%1: Please equip yourself at the nearest Equipment Crate.",_name]);
			_setText ctrlSetBackgroundColor [0,0,0,0.5];
sleep 5;

			_setText ctrlSetStructuredText (parseText format ["Role based loadouts are available during the respawn screen."]);
			_setText ctrlSetBackgroundColor [0,0,0,0.5];
sleep 5;

			_setText ctrlSetStructuredText (parseText format ["Equipment Crates can be relocated and used as F.O.B.s"]);
			_setText ctrlSetBackgroundColor [0,0,0,0.5];
sleep 5;

			_setText ctrlSetStructuredText (parseText format ["WARNING: Equipment Crates can also be stolen and / or destroyed!"]);
			_setText ctrlSetBackgroundColor [1,0,0,0.5];
		
sleep 3;
		
1 cutFadeOut 2;
		
sleep 1;
		
1 cutRsc ["default","PLAIN"];

enableEnvironment true;
enableRadio true;


sleep 2;

[1, 1] spawn BIS_fnc_cinemaBorder;	// cinema border off

};	


nggPreview=[
		[
			["Necessary Genocide Presents:","<t shadow='1' size='2'>%1</t><br/>", 9, 0, -1],
			["An adaptation of Warlords by Bohemia Interactive®","<t align = 'center' shadow = '1' size = '0.8'>%1</t><br/>", 9],
			["Edited by the Antiprotestant","<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 6]
		]
	] spawn BIS_fnc_typeText;

sleep 40;
5 fadeMusic 0; // fade current music volume to 0 in 5 sec

sleep 6;

playMusic "";

5 fadeMusic 1;

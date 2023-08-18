# ARMA3_NGG_Mods
Scripts I have written for ARMA 3 Multiplayer Missions


//add the following lines to description.ext
#include "NGG\dialogs.hpp"
#include "NGG\cfgSounds.hpp"

class CfgFunctions
{

	#include "NGG\cfgfunctions.hpp"
};

//Add the following to init.sqf (localize if split init files are present)


//Credits
[] execVM "NGG\ngg_credits.sqf";
[] execVM "GF_Ranks_MP\Credits.sqf";	//sample: was for my full release, edit accordingly for your purpose)

//NGG
[] execVM "NGG\ngg_init.sqf";

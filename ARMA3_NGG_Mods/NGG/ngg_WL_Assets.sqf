//Warlords Asset file


class CfgWLRequisitionPresets
{
    class nggWLAssetList // --- class name used in the Init module
    {
        class WEST // --- assets available for BLUFOR
        {
            class Infantry
            {
                class B_T_Soldier_F // --- must be asset class name
                {
                    cost = 200; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Soldier_AT_F // --- must be asset class name
                {
                    cost = 400; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Soldier_AR_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Soldier_M_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Soldier_LAT_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Soldier_GL_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Medic_F // --- must be asset class name
                {
                    cost = 500; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Soldier_SL_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Soldier_TL_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Soldier_Exp_F // --- must be asset class name
                {
                    cost = 400; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_soldier_mine_F // --- must be asset class name
                {
                    cost = 400; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Soldier_AA_F // --- must be asset class name
                {
                    cost = 500; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Soldier_Repair_F // --- must be asset class name
                {
                    cost = 500; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class B_T_Sniper_F // --- must be asset class name
                {
                    cost = 400; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
            };
            class Vehicles
            {
                class B_Quadbike_01_F
               {
                    cost = 100;
                    requirements[]={};
               };
			   class B_T_LSV_01_unarmed_F
               {
                    cost = 200;
                    requirements[]={};
               };
			   class B_T_LSV_01_armed_F
               {
                    cost = 300;
                    requirements[]={};
               };
			   class B_T_LSV_01_AT_F
               {
                    cost = 400;
                    requirements[]={};
               };
			   class B_T_MRAP_01_F
               {
                    cost = 300;
                    requirements[]={};
               };
			   class B_T_MRAP_01_hmg_F
               {
                    cost = 600;
                    requirements[]={};
               };
			   class B_T_MRAP_01_gmg_F
               {
                    cost = 700;
                    requirements[]={};
               };
			    class B_T_Truck_01_covered_F
               {
                    cost = 500;
                    requirements[]={};
               };
			    class B_T_Truck_01_ammo_F
               {
                    cost = 900;
                    requirements[]={};
               };
			    class B_T_Truck_01_medical_F
               {
                    cost = 900;
                    requirements[]={};
               };
			   class B_T_APC_Wheeled_01_cannon_F
               {
                    cost = 1100;
                    requirements[]={};
               };
			    class B_T_APC_Tracked_01_CRV_F
               {
                    cost = 1300;
                    requirements[]={};
               };
			   class B_T_APC_Tracked_01_AA_F
               {
                    cost = 1500;
                    requirements[]={};
               };
			   class B_T_AFV_Wheeled_01_up_cannon_F
               {
                    cost = 1700;
                    requirements[]={};
               };
			   class B_T_MBT_01_TUSK_F
               {
                    cost = 2200;
                    requirements[]={};
               };
            };
            class Aircraft
            {
                class B_Heli_Light_01_F
                {
                    cost = 1400;
                    requirements[]={"H"};
                };
				class B_Heli_Transport_01_F
                {
                    cost = 2000;
                    requirements[]={"H"};
                };
				class B_Heli_Transport_03_F
                {
                    cost = 3500;
                    requirements[]={"H"};
                };
				class B_Heli_Light_01_dynamicLoadout_F
                {
                    cost = 3500;
                    requirements[]={"H"};
                };
				class B_Heli_Attack_01_dynamicLoadout_F
                {
                    cost = 4500;
                    requirements[]={"H"};
                };
				class B_T_VTOL_01_armed_F
                {
                    cost = 5500;
                    requirements[]={"A"};
                };
				class B_Plane_CAS_01_dynamicLoadout_F
                {
                    cost = 7500;
                    requirements[]={"A"};
                };
				class B_Plane_Fighter_01_Stealth_F
                {
                    cost = 9500;
                    requirements[]={"A"};
                };
            };
            class Naval
            {
                class B_T_Boat_Transport_01_F
                {
                   cost = 300;
                    requirements[]={"W"};
                };
				class B_SDV_01_F
                {
                   cost = 400;
                    requirements[]={"W"};
                };
				class B_T_Boat_Armed_01_minigun_F
                {
                   cost = 600;
                    requirements[]={"W"};
                };
            };
            class Gear
            {
                class Box_NATO_ammo_F
                {
                    cost = 300;
                    requirements[]={};
				};
				class Box_NATO_Wps_F
                {
                    cost = 400;
                    requirements[]={};
				};
				class Box_T_NATO_Wps_F
                {
                    cost = 400;
                    requirements[]={};
				};
				class Box_NATO_Equip_F
                {
                    cost = 500;
                    requirements[]={};
				};
				class Box_NATO_AmmoOrd_F
                {
                    cost = 600;
                    requirements[]={};
				};
				class Box_NATO_Grenades_F
                {
                    cost = 300;
                    requirements[]={};
				};
				class Box_NATO_WpsSpecial_F
                {
                    cost = 500;
                    requirements[]={};
				};
				class Box_T_NATO_WpsSpecial_F
                {
                    cost = 500;
                    requirements[]={};
				};
				class Box_NATO_Support_F
                {
                    cost = 400;
                    requirements[]={};
				};
				class Box_NATO_Uniforms_F
                {
                    cost = 200;
                    requirements[]={};
				};
				class Box_NATO_WpsLaunch_F
                {
                    cost = 700;
                    requirements[]={};
				};
				class Box_NATO_AmmoVeh_F
                {
                    cost = 800;
                    requirements[]={};
				};
				
            };
            class Defences
            {
                class B_HMG_01_F
                {
                    cost = 250;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class B_HMG_01_high_F
                {
                    cost = 250;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class B_HMG_01_A_F
                {
                    cost = 250;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class B_GMG_01_F
                {
                    cost = 350;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class B_GMG_01_high_F
                {
                    cost = 350;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class B_GMG_01_A_F
                {
                    cost = 350;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class B_Mortar_01_F
                {
                    cost = 350;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class B_Static_AT_F
                {
                    cost = 450;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class B_Static_AA_F
                {
                    cost = 550;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_line_1_green_F
                {
                    cost = 25;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_line_3_green_F
                {
                    cost = 50;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_line_5_green_F
                {
                    cost = 75;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_wall_4_green_F
                {
                    cost = 125;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_wall_6_green_F
                {
                    cost = 175;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_wall_corner_green_F
                {
                    cost = 175;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_big_tower_green_F
                {
                    cost = 300;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_1_F
                {
                    cost = 25;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_3_F
                {
                    cost = 50;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_5_F
                {
                    cost = 75;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrierWall4_F
                {
                    cost = 125;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrierWall6_F
                {
                    cost = 175;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrierWall_corner_F
                {
                    cost = 175;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrierTower_F
                {
                    cost = 300;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };	
            };
        };
        class EAST // --- assets available for OPFOR
        {
           class Infantry
            {
                class O_T_Soldier_F // --- must be asset class name
                {
                    cost = 200; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Soldier_AT_F // --- must be asset class name
                {
                    cost = 400; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Soldier_AR_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Soldier_M_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Soldier_LAT_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Soldier_GL_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Medic_F // --- must be asset class name
                {
                    cost = 500; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Soldier_SL_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Soldier_TL_F // --- must be asset class name
                {
                    cost = 300; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Soldier_Exp_F // --- must be asset class name
                {
                    cost = 400; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_soldier_mine_F // --- must be asset class name
                {
                    cost = 400; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Soldier_AA_F // --- must be asset class name
                {
                    cost = 500; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Soldier_Repair_F // --- must be asset class name
                {
                    cost = 500; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
				class O_T_Sniper_F // --- must be asset class name
                {
                    cost = 400; // --- Command Points required
                    requirements[]={}; // --- dispositions required ("A" = airstrip, "H" = helipad, "W" = water (harbor))
                };
            };
            class Vehicles
            {
               class O_Quadbike_01_ghex_F
               {
                    cost = 100;
                    requirements[]={};
               };
			   class O_T_LSV_02_unarmed_F
               {
                    cost = 200;
                    requirements[]={};
               };
			   class O_T_LSV_02_armed_F
               {
                    cost = 300;
                    requirements[]={};
               };
			   class O_T_LSV_02_AT_F
               {
                    cost = 400;
                    requirements[]={};
               };
			   class O_T_MRAP_02_ghex_F
               {
                    cost = 300;
                    requirements[]={};
               };
			   class O_T_MRAP_02_hmg_ghex_F
               {
                    cost = 600;
                    requirements[]={};
               };
			   class O_T_MRAP_02_gmg_ghex_F
               {
                    cost = 700;
                    requirements[]={};
               };
			    class O_T_Truck_03_covered_ghex_F
               {
                    cost = 500;
                    requirements[]={};
               };
			    class O_T_Truck_03_medical_ghex_F
               {
                    cost = 900;
                    requirements[]={};
               };
			    class O_T_Truck_03_ammo_ghex_F
               {
                    cost = 900;
                    requirements[]={};
               };
			   class O_T_APC_Wheeled_02_rcws_v2_ghex_F
               {
                    cost = 1100;
                    requirements[]={};
               };
			    class O_T_APC_Tracked_02_cannon_ghex_F
               {
                    cost = 1300;
                    requirements[]={};
               };
			   class O_T_APC_Tracked_02_AA_ghex_F
               {
                    cost = 1500;
                    requirements[]={};
               };
			   class O_T_MBT_02_cannon_ghex_F
               {
                    cost = 1700;
                    requirements[]={};
               };
			   class O_T_MBT_04_Command_F
               {
                    cost = 2200;
                    requirements[]={};
               };
			   
            };
            class Aircraft
            {
                class O_Heli_Light_02_unarmed_F
                {
                    cost = 1400;
                    requirements[]={"H"};
                };
				class O_Heli_Transport_04_covered_F
                {
                    cost = 2000;
                    requirements[]={"H"};
                };
				class O_Heli_Light_02_dynamicLoadout_F
                {
                    cost = 3500;
                    requirements[]={"H"};
                };
				class O_Heli_Attack_02_dynamicLoadout_F
                {
                    cost = 4500;
                    requirements[]={"H"};
                };
				class O_T_VTOL_02_infantry_dynamicLoadout_F
                {
                    cost = 5500;
                    requirements[]={"A"};
                };
				class O_Plane_CAS_02_dynamicLoadout_F
                {
                    cost = 7500;
                    requirements[]={"A"};
                };
				class O_Plane_Fighter_02_Stealth_F
                {
                    cost = 9500;
                    requirements[]={"A"};
                };
            };
            class Naval
            {
                class O_T_Boat_Transport_01_F
                {
                   cost = 300;
                    requirements[]={"W"};
                };
				class O_SDV_01_F
                {
                   cost = 400;
                    requirements[]={"W"};
                };
				class O_T_Boat_Armed_01_hmg_F
                {
                   cost = 600;
                    requirements[]={"W"};
                };
            };
            class Gear
            {
                class Box_East_ammo_F
                {
                    cost = 300;
                    requirements[]={};
				};
				class Box_East_Wps_F
                {
                    cost = 400;
                    requirements[]={};
				};
				class Box_T_East_Wps_F
                {
                    cost = 400;
                    requirements[]={};
				};
				class Box_CSAT_Equip_F
                {
                    cost = 500;
                    requirements[]={};
				};
				class Box_East_AmmoOrd_F
                {
                    cost = 600;
                    requirements[]={};
				};
				class Box_East_Grenades_F
                {
                    cost = 300;
                    requirements[]={};
				};
				class Box_East_WpsSpecial_F
                {
                    cost = 500;
                    requirements[]={};
				};
				class Box_T_East_WpsSpecial_F
                {
                    cost = 500;
                    requirements[]={};
				};
				class Box_East_Support_F
                {
                    cost = 400;
                    requirements[]={};
				};
				class Box_CSAT_Uniforms_F
                {
                    cost = 200;
                    requirements[]={};
				};
				class Box_East_WpsLaunch_F
                {
                    cost = 700;
                    requirements[]={};
				};
				class Box_East_AmmoVeh_F
                {
                    cost = 800;
                    requirements[]={};
				};
				class O_supplyCrate_F
                {
                    cost = 1000;
                    requirements[]={};
					init = this addAction["<t color='#ff9900'>HALO jump</t>","ATM_airdrop\atm_airdrop.sqf",[],1,false,false,"","_this distance _target < 4"]; 0 = ["AmmoboxInit", [this,true]] spawn BIS_fnc_arsenal;
                };
            };
            class Defences
            {
                class O_HMG_01_F
                {
                    cost = 250;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class O_HMG_01_high_F
                {
                    cost = 250;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class O_HMG_01_A_F
                {
                    cost = 250;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class O_GMG_01_F
                {
                    cost = 350;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class O_GMG_01_high_F
                {
                    cost = 350;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class O_GMG_01_A_F
                {
                    cost = 350;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class O_Mortar_01_F
                {
                    cost = 350;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class O_Static_AT_F
                {
                    cost = 450;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class O_Static_AA_F
                {
                    cost = 550;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_line_1_green_F
                {
                    cost = 25;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_line_3_green_F
                {
                    cost = 50;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_line_5_green_F
                {
                    cost = 75;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_wall_4_green_F
                {
                    cost = 125;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_wall_6_green_F
                {
                    cost = 175;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_wall_corner_green_F
                {
                    cost = 175;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_01_big_tower_green_F
                {
                    cost = 300;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_1_F
                {
                    cost = 25;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_3_F
                {
                    cost = 50;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrier_5_F
                {
                    cost = 75;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrierWall4_F
                {
                    cost = 125;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrierWall6_F
                {
                    cost = 175;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrierWall_corner_F
                {
                    cost = 175;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				class Land_HBarrierTower_F
                {
                    cost = 300;
                    requirements[]={};
                    offset[]={0, 5.3, 0}; // --- custom offset (optional)
                };
				
            };
        };
    };
};


class CfgWLFactionAssets
{
	class WEST // --- BLUFOR
	{
		class InfantryUnits // --- for BLUFOR and OPFOR, only individual unit classnames are defined as the system doesn't spawn predefined groups
		{
			
			class B_T_Soldier_AT_F {};// --- asset classname to be added to the spawn list
			class B_T_Soldier_AR_F {};
			class B_T_Soldier_M_F {};
			class B_T_Soldier_LAT_F {};
			class B_T_Soldier_GL_F {};
			class B_T_Medic_F {};
			class B_T_Soldier_SL_F {};
			class B_T_Soldier_TL_F {};
			class B_T_Soldier_Exp_F {};
			class B_T_soldier_mine_F {};
			class B_T_Soldier_AA_F {};
			class B_T_Soldier_F {};
			
		};
		
		
	};
	class EAST // --- OPFOR
	{
		class InfantryUnits
		{
		class O_T_Medic_F {};
		class O_T_Soldier_F {};
		class O_T_Soldier_AT_F {};
		class O_T_Soldier_AA_F {};
		class O_T_Soldier_M_F {};
		class O_T_Soldier_LAT_F {};
		class O_T_Soldier_GL_F {};
		class O_T_Soldier_SL_F {};
		class O_T_Soldier_TL_F {};
		class O_T_Soldier_Exp_F {};
		class O_T_soldier_mine_F {};
		class O_T_Soldier_AR_F {};
		};
		
	};
	class INDEP // --- Independent
	{
		class InfantryGroups // --- independent faction uses group configs to spawn garrisons; you can define various group types to be randomly used
		{
			groups[] = {
				"'Indep' >> 'IND_F' >> 'Infantry' >> 'HAF_InfSquad_Weapons'", // --- use this part of the config path found in the Config viewer (CfgGroups)
				"'Indep' >> 'IND_F' >> 'Infantry' >> 'HAF_InfSquad'",
				"'Indep' >> 'IND_F' >> 'Infantry' >> 'HAF_InfTeam_AT'", // --- NOTE THE QUOTATION MARKS AND APOSTROPHES
				"'Indep' >> 'IND_F' >> 'Infantry' >> 'HAF_SniperTeam'"
			};
		};
		class MotorizedGroups
		{
			groups[] = {
				
			};
		};
		class MechanizedGroups
		{
			groups[] = {
				
			};
		};
		class ArmoredGroups
		{
			groups[] = {
				
			};
		};
	};
};


//class CfgWLAssetCostOverride
///{
////B_Soldier_F = 50;		// --- example asset classname
////Scan = 200;				// --- sector scan
////Airdrop = 200;			// --- airdrop
////FastTravel = 200;		// --- fast travel
////LastLoadout = 200;		// --- last loadout
////Arsenal = 200;			// --- arsenal
////FundsTransfer = 200;	// --- funds transfer
////ResetVoting = 200;		// --- voting reset
///};

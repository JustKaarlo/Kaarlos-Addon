// KAARLO'S 3D ICONS

// VEHICLE SHOP (\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa)
iconPos = position VehicleShop vectorAdd [0,0,2]; addMissionEventHandler ["Draw3D",{ if (VehicleShop distance player > 25) exitWith {}; drawIcon3D ["\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa", [1,1,1,1], iconPos, 2, 2, 0, "", 2, 0.05, "puristaBold", "left", false, 0, 0]; drawIcon3D ["", [1,0.9,0,1], visiblePosition VehicleShop vectorAdd [0,0,3], 5, 5, 0, "Vehicle Shop", 2, 0.05, "puristaBold", "center", false, 0, 0];}]; this addAction ["<t color='#FFFFFF' size='1.4'><img image='\plp_markers\icons\plp_icon_carDealer.pac'></img><t color='#ffd700' size='1.4' font='puristaBold'>"+(localize "STR_HG_VEHICLES_SHOP")+"</t>",{_this call HG_fnc_dialogOnLoadVehicles},"HG_DefaultShop",0,false,false,"",'(alive player) && !dialog && player distance _target < 3'];

// UNIT SHOP (\a3\ui_f\data\igui\cfg\simpletasks\types\meet_ca.paa)
iconPos2 = position UnitShop vectorAdd [0,0,2]; addMissionEventHandler ["Draw3D",{ if (UnitShop distance player > 25) exitWith {}; drawIcon3D ["\a3\ui_f\data\igui\cfg\simpletasks\types\meet_ca.paa", [1,1,1,1], iconPos2, 2, 2, 0, "", 2, 0.05, "puristaBold", "left", false, 0, 0]; drawIcon3D ["", [1,0.9,0,1], visiblePosition UnitShop vectorAdd [0,0,3], 5, 5, 0, "Unit Shop", 2, 0.05, "puristaBold", "center", false, 0, 0];}]; this addAction["<t color='#FFFFFF' size='1.4'><img image='\plp_markers\icons\plp_icon_specialforces.pac'></img><t color='#ffd700' size='1.4' font='puristaBold'>"+(localize "STR_HG_UNITS_SHOP")+"</t>",{_this call HG_fnc_dialogOnLoadUnits},"HG_DefaultShop",0,false,false,"",'(alive player) && !dialog && player distance _target < 3'];

// GARAGE (WORKS)
iconPos3 = position GarageMenu vectorAdd [0,0,2]; addMissionEventHandler ["Draw3D",{ if (GarageMenu distance player > 25) exitWith {}; drawIcon3D ["\A3\ui_f\data\map\mapcontrol\Tourism_CA.paa", [1,1,1,1], iconPos3, 2, 2, 0, "", 2, 0.05, "puristaBold", "left", false, 0, 0]; drawIcon3D ["", [1,0.9,0,1], visiblePosition GarageMenu vectorAdd [0,0,3], 5, 5, 0, "Garage", 2, 0.05, "puristaBold", "center", false, 0, 0];}]; this addAction["<t color='#FFFFFF' size='1.4'><img image='\plp_markers\icons\plp_icon_garage.pac'></img><t color='#ffd700' size='1.4' font='puristaBold'>"+(localize "STR_HG_TRADER")+"</t>",{_this call HG_fnc_dialogOnLoadTrader},"HG_DefaultTrader",0,false,false,"",'(alive player) && !dialog && player distance _target < 3'];

// GARAGE PARK (WORKS)
iconPos4 = position GaragePark vectorAdd [0,0,2]; addMissionEventHandler ["Draw3D",{ if (GaragePark distance player > 25) exitWith {}; drawIcon3D ["\a3\ui_f\data\igui\cfg\simpletasks\letters\p_ca.paa", [1,1,1,1], iconPos4, 2, 2, 0, "", 2, 0.05, "puristaBold", "left", false, 0, 0]; drawIcon3D ["", [1,0.9,0,1], visiblePosition GaragePark vectorAdd [0,0,3], 5, 5, 0, "Garage Park", 2, 0.05, "puristaBold", "center", false, 0, 0];}]; this addAction["<t color='#FFFFFF' size='1.4'><img image='\plp_markers\icons\plp_icon_parkinglot.pac'></img><t color='#ffd700' size='1.4' font='puristaBold'>"+(localize "STR_HG_GARAGE_PARK")+"</t>",{_this call HG_fnc_storeVehicleClient},"HG_DefaultGarage",0,false,false,"",'(alive player) && !dialog && player distance _target < 3'];

// ATM (WORKS)
iconPos5 = position ATM_Menu vectorAdd [0,0,2]; addMissionEventHandler ["Draw3D",{ if (ATM_Menu distance player > 25) exitWith {}; drawIcon3D ["\a3\ui_f\data\igui\cfg\simpletasks\types\Use_ca.paa", [1,1,1,1], iconPos5, 2, 2, 0, "", 2, 0.05, "puristaBold", "left", false, 0, 0]; drawIcon3D ["", [1,0.9,0,1], visiblePosition ATM_Menu vectorAdd [0,0,3], 5, 5, 0, "ATM", 2, 0.05, "puristaBold", "center", false, 0, 0];}]; this addAction["<t color='#FFFFFF' size='1.4'><img image='\plp_markers\icons\plp_icon_information.pac'></img><t color='#ffd700' size='1.4' font='puristaBold'>"+(localize "STR_HG_ATM")+"</t>",{_this call HG_fnc_dialogOnLoadATM},"",0,false,false,"",'(alive player) && !dialog && player distance _target < 3'];
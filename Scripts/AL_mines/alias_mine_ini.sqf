// null = ["marker_center",radius,"mine_class_name",numer_mines,detect_markers,debug_on] execVM "AL_bomb\alias_mine_ini.sqf";

/*
marker_center	- marker placed on map designating center of the minefield
radius 			- number, radius of the minefield
mine_class_name	- mine's classname you want to use in mine field
numer_mines		- integer, number of mines you want to place
detect_markers	- boolean, true if you want the script to search for markers where to place mines in the designated area, if false the script will place mines randomly in the designated area
				  **** the markers you place in editor must be of type Empty for the script to work
debug_on		- boolean, if on dots will be placed on map at mines' location

Note:
* The script gives you better control where to place mines without too much effort

** Allows you to dynamically generate minefields or IEDs. Is a good option for replayable missions.

*** When you use marker to designate locations for mines, if the number of mines is smaller than the number of markers the script will select randomly markers where to place mines.
Is a good option for replayable missions.

**** If you want to place multiple types of mines run script again replacing the className and parameters accordingly

***** Vanilla IED objects are self-triggerd now

=========== Vanilla self triggered mines, IEDs classname

"APERSMine"
"APERSBoundingMine"
"APERSTripMine"
"ATMine"
"SLAMDirectionalMine"
"Underwatermine"
"UnderwatermineAB"

==== implemented a simple workaround in the script to make IEDs selftriggered as well without further scripting
"IEDLandBig_F"
"IEDUrbanBig_F"
"IEDUrbanSmall_F"
"IEDLandSmall_F"
*/

Example:

=========== without markers placed on map - Debug ON AND 50 mines are placed randomnly inside a 300 m radius area
null = ["marker_center",300,"APERSBoundingMine",50,false,true] execVM "AL_mines\alias_mines.sqf";

=========== with EMPTY markers placed on map - Debug ON AND 41 mines are placed where EMPTY markers are found inside a 400 m radius area
null = ["marker_center",400,"APERSBoundingMine",41,true,true] execVM "AL_mines\alias_mines.sqf";

=========== with EMPTY markers placed on map - Debug ON AND 41 IEDs are placed at every EMPTY marker inside a 400 m radius area - Note that in this case number of mrkers must be equal with number of mines [numer_mines]
null = ["marker_center",400,"IEDUrbanBig_F",41,true,true] execVM "AL_mines\alias_mines.sqf";

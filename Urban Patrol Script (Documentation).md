## Put This in the Init Field of the Squad Leader
```
nul=[this,"Alpha"] execVM "ups.sqf"
```

### Area Marker
```
   • The marker should be rectangular. The script will work with a round marker,
     but it won't be an exact representation of the area that is being patrolled.
     If the marker is rotated this will automatically be taken into consideration.
     Color, fill patterns and marker text don't matter.

   • You can have as many different area markers as you wish,
     to have different units patrol different areas. These zones can overlap.

   • Do not to use special symbols in the marker name.
     Underscore ("_") is ok, but most others ("-",":","/", etc.) will cause errors.

   • The marker can be defined via a variable (e.g. area="Alpha"; nul=[this,area] execVM "ups.sqf")

   • The marker position and size can be changed anytime during the mission.
     Units will automatically update their patrol area.

   • By default the area marker is hidden during the mission. 
     To make it visible in the game, use the "SHOWMARKER" option.

   • If you want to avoid the area marker to be seen during the pre-mission briefing,
     you can add the following line to your init.sqf:
     "markername" setMarkerPos [-(getMarkerPos "markername" select 0),-(getMarkerPos "markername" select 1)];

   • You can use a trigger, instead of a markers, to designate the active area.
     In that case the trigger should be named, and the script would be called with the 
     trigger object as the area parameter: e.g. nul=[this,citytrigger] execVM "ups.sqf"
```

     ### Patrolling Unit
```
   • The script can be called by any side: BLUFOR, OFPOR, INDEPENDENT or CIVILIANS.

   • It will work with any type of units: Infantry, Armored, cars, choppers, boats and planes.

   • It can be used with single units or groups (only the group leader needs to call the script).
     - If the group leader dies, another member will take over the lead, and continue to patrol.
     - Units don't need to be named or have any waypoints.
     - If the initial position of the unit is outside the assigned marker area it will first start
       moving toward it.
     - The unit parameter can also be an array that contains all members of the patrolling group.
       In that case the array is searched for a living member to lead the patrol group.

   • Patrolling units will make stops of random length (between 10 and 30 seconds) when they reach their
     patrol end points. This can be suppressed via a "NOWAIT" parameter.

   • By default unit will start at the location they've been placed at in the editor.
     If you want the start position to be anywhere within the active area use parameter "RANDOM".

   • You can create a random number of 'clones' of a patrolling unit with the "MIN:n"/"MAX:n" parameters.
     (see details below)

   • Every patrolling group can have a global variable assigned to it which allows you to stop the
     script for that particular group (see "GLOBAL VARIABLES" at the bottom).

   • To display a message ("SECTOR <areaname> CLEARED") when a sector is cleared of a specific side,
     use the "TRIGGER" parameter.

   Only the position of the first two arguments in the script call are crucial: [unit,"markername"].
   The position and capitalization of the other arguments don't matter.
```

   ### Optional Arguments
   #### Movment:
   ```
 "RANDOM" - The initial position of the group will be anywhere within the marker area. While this option increases the randomness of the mission, keep in mind that because of
the unpredictability of positions, some units may be stuck in inaccessable areas. Infantry units may also end up on rooftops. In that case they will *stay* at that position, instead of patrolling the area.

 "RANDOMDN" - Only random positions on the ground level will be used.

 "RANDOMUP" - Only the top building positions will be used.
 NOTE: Only building tops that can be accessed via stairs or ladders will be used, and the units this way will not move away from their position. Only single units can be placed on rooftops!
If "RANDOMUP" is used with a group, it is ignored. Only building tops that can be accessed via stairs or ladders will be used! Also - Only single units can be placed on rooftops.
If this command is used with a group it will still be placed on ground level.

 "NOAI" - By default soldier units will try evasive and flanking maneuvers if they spot an opponent. With this switch this behaviour can be turned off. (Units will patrol the area normally,
and only show the regular AI behaviour as defined by VBS2.)

 "NOFOLLOW" - The patrolling unit will not leave the marker area, not even to pursue spotted enemies. Because of the overriding AI behaviour this will not work with 100% reliability with team members
(who may decide to go after an enemy after all). The team leader though (or a single patrolling unit) will never leave the area.

 "NOMOVE" - The unit will stay at its initial position until an enemy is spotted, who it will then pursue. Once the enemy is killed (or lost) the unit will return to the start position.

 "NOSLOW" - By default the units' behaviour is set to "safe" and the speed to "limited". With this switch that setting can be turned off (in case the unit's behaviour/speed, as defined in the editor should be used).

 "NOWAIT" - Do not wait at patrol end points.
    ```

   #### Clones:
``
"MIN:x/MAX:y" - Creates a random number of 'clones' of the unit or group that's calling the script. This increases the randomness of the mission, as even the mission maker himself
 won't know how many enemy units he will have to face. The copied units will be of the same type and patrol behaviour as the original ones. The number of copies created is between the MIN:x and the MAX:y parameter.
So if the script is called with "MIN:",3,"MAX:",6 between 3 and 6 copies of the original group will be created.Keep in mind that each of of these arguments (MIN & MAX) actually consists of TWO parameters that are given to the
script: "MIN:",NUMBER and "MAX:",NUMBER. This command only works with Infantry units (no vehicles can be cloned). If the cloned unit is type "Civilian", then the clones will be random types of "Civilian 1" to 6. If only MIN:x is
defined MAX will default to the same value as MIN. If only MAX:y is defined MIN will default to 1. (EXAMPLE: nul=[this,"Alpha","MIN:",3,"MAX:",6] execVM "ups.sqf")

 "PREFIX:s" - Prefix to use for cloned units' names. (Default is "UPSCLONE") (EXAMPLE: nul=[this,"Alpha","PREFIX:","OPFOR"] execVM "ups.sqf")

 "SHOWMARKER" - Display the area marker (by default it is hidden at mission start). (EXAMPLE: nul=[this,"Alpha","SHOWMARKER"] execVM "ups.sqf")

 "NOSLOW" - By default the units' behaviour is set to "safe" and the speed to "limited". With this switch that setting can be turned off (in case the unit's behaviour/speed, as defined in the editor should be used).
(EXAMPLE: this setBehaviour "STEALTH"; nul=[this,"Alpha","NOSLOW"] execVM "ups.sqf")

 "NOAI" - By default soldier units will try evasive and flanking maneuvers if they spot an opponent. With this switch this behaviour can be turned off. (Units will patrol the area normally,  
 and only show the regular AI behaviour as defined by ArmA.) (EXAMPLE: nul=[this,"Alpha","NOAI"] execVM "ups.sqf")
```


   #### General
```
"TRIGGER" - Display a message when no more units of the associated side are left in the sector. (EXAMPLE: nul=[this,"Alpha","TRIGGER"] execVM "ups.sqf")

 "TRACK" - Displays a marker with the current position, as well as the destination, for each unit. (mainly used for testing and debugging missions)

 "EMPTY:x" - Normally, the zone is considered empty if no enemy units are left. If you want to allow a few leftover units, and still consider it cleared, enter the number here.
(EXAMPLE: nul=[this,"Alpha","EMPTY:",3] execVM "ups.sqf")

 "DELETE:x" - Delete dead units after the specified number of seconds. (EXAMPLE: nul=[this,"Alpha","DELETE:",60] execVM "ups.sqf")

 "NAMED" - If you would like to be able to influence a unit's patrolling behavior after the script has started, you have to give a unit a name in the editor, and use the "NAMED' parameter in the script arguments.
This will create a global variable for each patrolling unit/group that can then be set by other scripts. (See GLOBAL VARIABLES below.)

"CYCLE:x" - By default there is a 5 second delay between test cycles in this sript. If you want a short one (for very crucial or fast moving units for example) or think a unit will do fine with a longer one
(slow-moving, non-critical units) it can be overridden via this argument. (Any units that come across a new "danger situation" will temporarily get shorter cycles, independently of this setting.)
(EXAMPLE: nul=[this,"Alpha","CYCLE:",2] execVM "ups.sqf")
```

### Technical Notes
```
The "SECTOR CLEARED" message is generated by a trigger that covers the active area. This trigger is automatically created by the script, and assigned to any enemy units patrolling.
In order to catch any path finding 'excursions' the AI may make, as well as any flanking moves, the trigger area is 1.5 times bigger than the actual marker area.
(That way there won't be any false messages in case an AI temporarily leaves the active area.) Only one trigger is created per marker area, even if there are several active units in there.
The name of the trigger created is "KRON_Trig_{side}_{marker}", where {side} indicates the side of the controlled units ("WEST", "EAST", "GUER" or "CIV"), and {marker} is the name of the marker used.
```

### Global Variables
```
GROUP CONTROL: If a unit has a name, and the "NAMED" argument has been used, a variable with the name KRON_UPS_[unitname] will be created for it. This variable can then be set during runtime to modify its patrolling behavior.
When the script starts KRON_UPS_[unitname] is set to 1. If it is set to 0 that particular group will abort their patrolling and stop at their current position. Units that are *not* named all use
the same glabal variable KRON_UPS_[side]. So - by setting KRON_UPS_CIV to 0 you could stop all patrolling civilians.

 SECTOR TRIGGER: KRON_Cleared_[markername] is false if there are enemy units still within the marker/trigger zone, and true if the zone is empty. This can be used to activate other events (e.g. end triggers).

 There are a few constants used in the script that could be altered in order to customize behaviour.
 All these constants can be found at the very top of the script.
```

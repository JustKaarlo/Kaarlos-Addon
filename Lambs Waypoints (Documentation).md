# [LAMBS DANGER](https://github.com/nk3nny/LambsDanger/wiki/waypoints)
Put this code in the init field of a group (Marker Positio)
```
call {[this, 500, 15, [], getmarkerPos "taskCREEP_1", false, false, 0] spawn lambs_wp_fnc_taskHunt;}`
```
#### Parameters:
`this` = Group/Unit Performing Action
`500` = Range of Tracking
`15` = Script Interval
`[]` = Area the AI Camps In
`taskHUNT_1` = Center Position
`false` = Only Players Gets Hunted
`false` = Dynamic Reinforcement
`0` = Enable Flares

## Put this code in the init field of a group (Coordinates)
```
call {[this, 500, 15, [], [2868.15,2265.5,0], false, false, 0] spawn lambs_wp_fnc_taskHunt;}
```
`"2868.15,2265.5,0"` = Center Position

## Spawn & Task Creep With Trigger
```
Condition: 
call{this}

On Activation: 
call{_group1 = [getMarkerPos "spawnHUNTgrp_1", west, ["Unit Classname_1", "Unit Classname_2", "Unit Classname_3"],0] call BIS_fnc_spawnGroup;
[_group1, 300, 10, [], getmarkerPos "taskCREEP_1", false] call lambs_wp_fnc_taskCreep:}
```

## Task Hunt with Scripted Waypoint
```
Condition:	
call{this}

On Activation:	
call{[_thisList, 200, 40, [], [2977.61,5986.89,0], false, true, 0] call lambs_wp_fnc_taskHunt;}
```

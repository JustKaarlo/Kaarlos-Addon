```
"LIVES=" - Number of times group should respawn. Integer or array [minLives, maxLives]. Default is infinite lives
"DELAY=" - Delay in seconds before respawning. Number or array [minTime, maxTime]. Default is 30 seconds
"CACHE=" - Group will cache until players are within "CACHE=" metres. Default is no caching
"REDUCE=" - Group will cache until players are within "REDUCE=" metres. Default is no reducing
"START=" - Initial spawning delay. Use if you spawn multiple groups by one trigger to avoid spawn lag. Default is 0.
"GAIA_MOVE=" - Group added to GAIA with "MOVE" parameter
"GAIA_NOFOLLOW=" - Group added to GAIA with "NOFOLLOW" parameter
"GAIA_FORTIFY=" - Group added to GAIA with "FORTIFY" parameter
"FLYING" - Air vehicles will spawn already flying
"RESPAWNMARKERS=" - Array of alternate respawn positions
"PAUSE=" - Radius in which enemies will pause the spawner. Default is 200.
"EXIT=" - Name of exit trigger. Group will not respawn again once trigger is activated
"INIT=" - Init string to run upon spawning. (Use "_proxyThis" where you would usually use "this" in a script or function call).
"DEBUG" - Will provide debugging information
```

### Put This Code in the Init Field of Group Leader.
```
Infinte Respawn
0 = [this] spawn jebus_fnc_main;

Respawn Move to Random Sector
0 = [this, "DELAY=", 10, "GAIA_NOFOLLOW=", ["5", " 6"]] spawn jebus_fnc_main;

Respawn On Random Position or Editor Position
0 = [this, "DELAY=", 10, "GAIA_NOFOLLOW=", "9", "RESPAWNMARKERS=", ["m1", "m2"]] spawn jebus_fnc_main;

Plane/Helicopter Respawn
0 = [this, "GAIA_MOVE=", "1", "DELAY=", 30, "FLYING"] spawn jebus_fnc_main;

Transport Pickup and Dropoff at Location. Put code 1 in vehicle init field (Transport)
0 = [this, "GAIA_MOVE=", "2"] spawn jebus_fnc_main;

Put code 2 in the squad leader init field (Transport To)
0 = [this, "GAIA_MOVE=", "1"] spawn jebus_fnc_main;

Respawns Group 4-8 Times
0 = [this, "LIVES=", [4,8]] spawn jebus_fnc_main;

Respawns Group After 30-60 Seconds Delay
0 = [this, "DELAY=", [30,60]] spawn jebus_fnc_main;

Group Uncaches When Players Are Within 500m of Spawn Position
0 = [this, "CACHE=", 500, "GAIA_NOFOLLOW=", "3"] spawn jebus_fnc_main;

Group Initializes UPS Script To Patrol a Marker Named "agia". Respawning Will Pause If Enemies Are Within 100m of Spawn Position
0 = [this, "PAUSE=", 100, "INIT=", "[_proxyThis, 'agia'] execVM 'UPS.sqf'"] spawn jebus_fnc_main;

Group Will Respawn Randomly at Position "m1" or "m2"
0 = [this, "GAIA_MOVE=", "9", "RESPAWNMARKERS=", ["m1", "m2"]]spawn jebus_fnc_main;

Group Will Respawn Until myExitTrigger Is Activated
0 = [this, "GAIA_NOFOLLOW=", "10", "EXIT=", myExitTrigger] spawn jebus_fnc_main;
```

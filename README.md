# Kaarlo's Documentation

## Virtual Garage From Object  
Begin by placing an object that you believe is suitable for accessing the virtual garage.
After placing the object, double-click on it. This action will reveal the **init** field.
In that init field you put this code: 
```
this addaction ["<t color='#FB8B24'>Virtual Garage</t>", {[("marker_spawn")] call opec_fnc_garageNew;}];
```
> `#FB8B24` = Text Color  
> [Google Color Picker](https://g.co/kgs/Xzkhsht)

> `Virtual Garage` = Action Name  
> *This can be whatever you want*

> `marker_spawn` = Vehicle Spawn  
> *I recommend placing a **Helipad (Invisible)** down, then naming it whatever you prefer.*

Now you will need to go to you mission file and create a `functions` folder after that create a folder called `opec`  
Now create a file called `fn_garageNew.sqf` copy and paste [this code](https://github.com/JustKaarlo/Documentation/blob/e7f9ab84dcf14b6a9c6b790445ec2429ecf26e67/Virtual%20Garage/functions/opec/fn_garageNew.sqf) in there.  

After you have done that go your your mission directory and create a file called `description.ext`  
copy and paste this in there:
```sqf
// VIRTUAL GARAGE SCRIPT
class CfgFunctions {
	class opec {
		class opec {
			class garageNew {};
		};
	};
};
```
After that your done. Now you can go and test it.

---

## Accsess ACE Arsenal 4 Diffrent Ways
### Type 1
Begin by placing an object, such as a `B_CargoNet_01_ammo_F`, but feel free to use any object you prefer.  
Now double-click on the object and enter the following code into the **init** field:
```
[this, true] call ace_arsenal_fnc_initBox;
```

### Type 2
This one is unique with its special design. Begin by placing an object. Double-click on it to access the init field. Insert the following code:
```
this addAction ["<t color='#FFFFFF' size='1.4'><img image='a3\ui_f\data\logos\a_64_ca.paa'></img><t color='#ffd700' size='1.4' font='puristaBold'> ACE Arsenal</t>", {[player, player, true] call ace_arsenal_fnc_openBox;}];
```


### Type 3
Start by placing down a **trigger** and put this activation settings:
```
Type = None
Activation = Any Player
Activation Type = Present
Repeatable = [YES]
Server Only = [NO]
```
Now that you have filled in those settings, navigate to Expression and utilize the following:
```
Condition: 
player in thisList

On Activation:
thisTrigger setVariable ["_playerAction", player addAction ["<t color='#FFFFFF' size='1.4'><img image='a3\ui_f\data\logos\a_64_ca.paa'></img><t color='#ffd700' size='1.4' font='puristaBold'> ACE Arsenal</t>", {[player, player, true] call ace_arsenal_fnc_openBox;}]];

On Deactivation: 
player removeAction (thisTrigger getVariable ["_playerAction", -1])
```
Now you've set up a trigger area. When a player enters this area, they will be presented with an action caleed ACE Arsenal.


### Type 4
Start by placing down a **trigger** and put this activation settings:
```
Type = None
Activation = Any Player
Activation Type = Present
Repeatable = [YES]
Server Only = [NO]
```
Now that you have filled in those settings, navigate to Expression and utilize the following:
```
Condition: 
player in thisList

On Activation:
thisTrigger setVariable ["_playerAction", player addAction ["<t color='#FFFFFF' size='1.4'><img image='a3\ui_f\data\logos\a_64_ca.paa'></img><t color='#ffd700' size='1.4' font='puristaBold'> ACE Arsenal</t>", {[player, player, true] call ace_arsenal_fnc_openBox;}]];

On Deactivation: 
player removeAction (thisTrigger getVariable ["_playerAction", -1])
```
This code differs from Type 3, just so you're aware.

---

## Infinite Ammo For Vehicle
Choose a vehicle and place it down. Then double-click on it and insert this code into the init field:
```
this addEventHandler ["Fired",{(_this select 0) setVehicleAmmo 1}]
```

---

## Disable Negative Rating For Player(s)
Position a playable unit, double-click on them, and in the init field, input this code:
```
this addRating 1e11;
```

---

### Artillery Ammo Classnames
- `R_80mm_HE (80mm HE Rocket)`
- `R_230mm_HE (230mm HE Rocket)`
- `Sh_155mm_AMOS (155mm HE Shells)`
- `Sh_82mm_AMOS (82mm HE Shells)`
- `Mine_155mm_AMOS_range (Mine Cluster)`
- `AT_Mine_155mm_AMOS_range (AT Mine Cluster)`
- `Cluster_155mm_AMOS (Cluster Shells)`
- `Smoke_82mm_AMOS_White (Smoke Shell White)`
- `Sh_82mm_AMOS_LG (Laser Guided)`
- `Sh_155mm_AMOS_LG (Laser Guided)`
- `Sh_82mm_AMOS_guided (Guided)`
- `Sh_155mm_AMOS_guided (Guided)`

---

## Teleporter
Okay, place an object, double-click on it, and insert this code into the init field:
```
this addAction ["<t color='#FB8B24'>Name</t>",{player setPosATL (getPosATL fob1)}];
```
The object where you insert this code is where the player will be able to select teleportation.
`#FB8B24` = Color of Text
`Name` = Action Name
`fob1` = This is the important part: fob1 designates the location where the player will teleport. For instance, place a Land_HelipadEmpty_F and name it fob1. Now, the player will teleport to that exact position if they choose to do so.

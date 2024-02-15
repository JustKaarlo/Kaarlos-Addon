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
Now create a file called `fn_garageNew.sqf` copy and paste [this code]() in there.

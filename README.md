# tonny_compas

A simple script who check every 3s if you have an item in inventory for add compas in hud. Just for more roleplay.

The item is configurable in config.lua.

If you don't have it no compas in hud. 
If you have it the compas in hud.

-----------------------------
ensure tonny_compas

Set in [vorp_core] in config.lua :
mapTypeOnFoot            = 0,
mapTypeOnMount           = 0,

Comment line [277] in [vorp_core -> client] in cl_spawnplayer.lua :
From ``MapCheck()`` to ``--MapCheck()``
waituntil {!isnull (finddisplay 46)}; 
sleep 15;

[]spawn
{
	wardrobe = -1;
	private["_veh"];
	while {(alive player)} do
	{
		if (wardrobe == -1) then
		{
			wardrobe = (vehicle player) addaction [("<t color=""#00FFFF"">" + ("Action Menu") +"</t>"),"actionmenu\actionmenu_execute.sqf","",5,false,true,"",""];
			_veh = vehicle player;
		};
		if (_veh != vehicle player) then
		{
			_veh removeAction wardrobe;
			wardrobe = -1;      
		};
		Sleep 2;
	};
};

pathtoscripts = "actionmenu\tools\";
pathtocolors = "actionmenu\sky\";
pathtofog = "actionmenu\fog\";
pathtodonations = "actionmenu\donations\";
pathtobuilding = "actionmenu\building\";
EXECscript1 = 'player execVM "'+pathtoscripts+'%1"';
EXECscript2 = 'player execVM "'+pathtocolors+'%1"';
EXECscript4 = 'player execVM "'+pathtofog+'%1"';
EXECscript5 = 'player execVM "'+pathtodonations+'%1"';
EXECscript6 = 'player execVM "'+pathtobuilding+'%1"';

if ((getPlayerUID player) in ["13399238","4874752","199059462","129564102"]) then {
Actionmenu =
[
	["",true],
		["Action Menu", [2], "#USER:ActionMenua", -5, [["expression", ""]], "1", "1"],
		["Deploy Menu", [3], "#USER:DeployMenu", -5, [["expression", ""]], "1", "1"],
		["Color Filters", [4], "#USER:SkyMenu", -5, [["expression", ""]], "1", "1"],
		["View Distance (Better FPS)", [5], "#USER:FogMenu", -5, [["expression", ""]], "1", "1"],
		["Donations", [6], "#USER:DonatorMenu", -5, [["expression", ""]], "1", "1"],
	  //["Advanced Building", [7], "#USER:BuildingMenu", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];} else {
ActionMenu =
[
	["",true],
		["Action Menu", [2], "#USER:ActionMenua", -5, [["expression", ""]], "1", "1"],
		["Deploy Menu", [3], "#USER:DeployMenu", -5, [["expression", ""]], "1", "1"],
		["Color Filters", [4], "#USER:SkyMenu", -5, [["expression", ""]], "1", "1"],
		["View Distance (Fog)", [5], "#USER:FogMenu", -5, [["expression", ""]], "1", "1"],
	  //["Advanced Building", [6], "#USER:BuildingMenu", -5, [["expression", ""]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
};

ActionMenua =
[
	["",true],
		["Flip Vehicle", [2],  "", -5, [["expression", format[EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
		["Self Bloodbag", [3],  "", -5, [["expression", format[EXECscript1,"bloodbag.sqf"]]], "1", "1"],
		["Commit Suicide", [3],  "", -5, [["expression", format[EXECscript1,"suicide.sqf"]]], "1", "1"],
		["Hints & Tips - Read Me!", [8],  "", -5, [["expression", format[EXECscript1,"help.sqf"]]], "1", "1"],			
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

DeployMenu =
[
	["",true],
		["Deploy Bike", [2],  "", -5, [["expression", format[EXECscript1,"bike.sqf"]]], "1", "1"],
		["Deploy Motorcycle", [3],  "", -5, [["expression", format[EXECscript1,"motor.sqf"]]], "1", "1"],
		["Deploy Gyrocopter", [4],  "", -5, [["expression", format[EXECscript1,"gyro.sqf"]]], "1", "1"],
		["Pack Created Vehicle", [5],  "", -5, [["expression", format[EXECscript1,"pack.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

SkyMenu =
[
["",true],
        ["Color Bluff", [2],  "", -5, [["expression", format[EXECscript2 ,"16.sqf"]]], "1", "1"],
        ["Let it Snow!", [3],  "", -5, [["expression", format[EXECscript2 ,"17.sqf"]]], "1", "1"],
        ["Dark Draining", [4],  "", -5, [["expression", format[EXECscript2 ,"3.sqf"]]], "1", "1"],
        ["Sandy", [5],  "", -5, [["expression", format[EXECscript2 ,"4.sqf"]]], "1", "1"],
        ["Summer Chernarus", [6],  "", -5, [["expression", format[EXECscript2 ,"5.sqf"]]], "1", "1"],
        ["Dog Vision", [7],  "", -5, [["expression", format[EXECscript2 ,"6.sqf"]]], "1", "1"],
        ["Tropical", [8],  "", -5, [["expression", format[EXECscript2 ,"7.sqf"]]], "1", "1"],
        ["Photo", [9],  "", -5, [["expression", format[EXECscript2 ,"8.sqf"]]], "1", "1"],
        ["WarZone", [10],  "", -5, [["expression", format[EXECscript2 ,"9.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Next page", [12], "#USER:SkyMenu2", -5, [["expression", ""]], "1", "1"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SkyMenu2 =
[
["",true],

        ["Operation Flashpoint", [2],  "", -5, [["expression", format[EXECscript2 ,"10.sqf"]]], "1", "1"],
        ["Africa", [3],  "", -5, [["expression", format[EXECscript2 ,"11.sqf"]]], "1", "1"],
        ["Blue", [4],  "", -5, [["expression", format[EXECscript2 ,"12.sqf"]]], "1", "1"],
        ["Arma Mission Colours", [5],  "", -5, [["expression", format[EXECscript2 ,"13.sqf"]]], "1", "1"],
        ["Heavy Colour Correction", [6],  "", -5, [["expression", format[EXECscript2 ,"14.sqf"]]], "1", "1"],
        ["Zombie View", [7],  "", -5, [["expression", format[EXECscript2 ,"15.sqf"]]], "1", "1"],
        ["Wasteland", [8],  "", -5, [["expression", format[EXECscript2 ,"2.sqf"]]], "1", "1"],
        ["Clear Contrast", [9],  "", -5, [["expression", format[EXECscript2 ,"1.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
FogMenu =
[
["",true],
        ["250M", [2],  "", -5, [["expression", format[EXECscript4 ,"250.sqf"]]], "1", "1"],
        ["500M", [3],  "", -5, [["expression", format[EXECscript4 ,"500.sqf"]]], "1", "1"],
        ["750M", [4],  "", -5, [["expression", format[EXECscript4 ,"750.sqf"]]], "1", "1"],
        ["1000M", [5],  "", -5, [["expression", format[EXECscript4 ,"1000.sqf"]]], "1", "1"],
        ["1250M", [6],  "", -5, [["expression", format[EXECscript4 ,"1250.sqf"]]], "1", "1"],
        ["1500M", [7],  "", -5, [["expression", format[EXECscript4 ,"1500.sqf"]]], "1", "1"],
        ["1750M", [8],  "", -5, [["expression", format[EXECscript4 ,"1750.sqf"]]], "1", "1"],
        ["2000M", [9],  "", -5, [["expression", format[EXECscript4 ,"2000.sqf"]]], "1", "1"],
        ["2500M", [10],  "", -5, [["expression", format[EXECscript4 ,"2500.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Next page", [12], "#USER:FogMenu2", -5, [["expression", ""]], "1", "1"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
FogMenu2 =
[
["",true],
        ["3000M", [2],  "", -5, [["expression", format[EXECscript4 ,"3000.sqf"]]], "1", "1"],
        ["4000M", [3],  "", -5, [["expression", format[EXECscript4 ,"4000.sqf"]]], "1", "1"],
        ["5000M", [4],  "", -5, [["expression", format[EXECscript4 ,"5000.sqf"]]], "1", "1"],
        ["10000M", [5],  "", -5, [["expression", format[EXECscript4 ,"10000.sqf"]]], "1", "1"],
        ["20000M (Super Computer)", [6],  "", -5, [["expression", format[EXECscript4 ,"20000.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
DonatorMenu =
[
["",true],
        ["Tier 3 Supplies", [2],  "", -5, [["expression", format[EXECscript5 ,"t3.sqf"]]], "1", "1"],
        ["Test", [2],  "", -5, [["expression", format[EXECscript5 ,"showpos.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
BuildingMenu =
[
["",true],
        ["Advanced Building Recipes", [2],  "", -5, [["expression", format[EXECscript6 ,"build_recipe_dialog.sqf"]]], "1", "1"],
        ["Building Help", [3],  "", -5, [["expression", format[EXECscript6 ,"build_help.sqf"]]], "1", "1"],
		["Show Flag Markers", [4],  "", -5, [["expression", format[EXECscript6 ,"show_flag_markers.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:ActionMenu";
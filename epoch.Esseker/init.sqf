// Load the client
// Place the line below at the top of your init.sqf
execVM "blckClient.sqf";

//start the mission system.
// place the section below above any line that reads:
// if (isServer) exitWith {};
if (isServer) then {
	execVM "\q\addons\custom_server\init.sqf";
};
//service point repair/rearm
if(hasInterface) then{
	[] execVM "addons\service_point\service_point.sqf";
//status bar
	[] execVM "addons\Status_Bar\init_statusBar.sqf";
};
//removes crypto when service point is used
	[] execVM "custom\HALV_takegive_crypto_init.sqf";

//blackmarket trader
	[] execVM "trader\init.sqf";
	[] execVM "trader\HALV_takegive_crypto_init.sqf";
	[] execVM "trader\resetvehicleammo.sqf";
	
//cmEARPLUGS CODE START

call compile preProcessFileLineNumbers "cmEarplugs\config.sqf";

//cmEARPLUGS CODE END	

//Intro Script
[] execVM "addons\script_intro.sqf";
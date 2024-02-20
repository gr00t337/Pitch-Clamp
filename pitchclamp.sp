#include <sourcemod>

public Plugin myinfo = 
{ 
	name = "Pitch Clamp", 
	author = "gr00thvh", 
	description = "Clamping Pitch to 89/-89", 
	version = "0.1", 
	url = "github.com/gr00t337/pitchclamp" 
};

public Action OnPlayerRunCmd(int client, int& buttons, int& impulse, float vel[3], float angles[3], int& weapon, int& subtype, int& cmdnum, int& tickcount, int& seed, int mouse[2])
{
	if (!IsPlayerAlive(client)) {
		return Plugin_Continue;
	}

	// clamp pitch
	if (angles[0] > 89.0) {
		angles[0] = 89.0;
	} else if (angles[0] < -89.0) {
		angles[0] = -89.0;
	}

	return Plugin_Changed;
}
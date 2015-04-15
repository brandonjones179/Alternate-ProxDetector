/*
Made by Brandon Jones, all rights reserved
*/

stock SendRangedMessage(playerid, Float:Range, Message[], color)
{
    new Float:X, Float:Y, Float:Z;
    new str[128];
    
	GetPlayerPos(playerid, X, Y, Z);
	for(new a = 0, b = GetMaxPlayers(); a < b; a++)
	{
	    if(IsPlayerInRangeOfPoint(a, Range, X, Y, Z))
	    {
		format(str, sizeof(str), "%s", Message);
	        SendClientMessage(a, color, str);
	    }
	}
}

/* Place it in your script, Let me explain the functions.

playerid = ID of a specific player
Float:Range = Any float integer can be put here, and the stock will check upon this to see from the sender's ID, how far can the players see the message
Message[] = The specific message which is sent to the set range nearby.
color = the hex/binary/macro defined code can be put here, it's just like the second parameter in SendClientMessage

Example usage -:

SendRangedMessage(playerid, 30.0, "This is a test to see if the stock works well.", your_color_here);

The concept is like SendClientMessage, but is useful for Role-play servers.

*/

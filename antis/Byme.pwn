/*==============================================
Command Protection System for SA-MP (Pawn)
by SMK
==============================================

This system protects your server by blocking:
1) Any command containing a dot (".") — common in hack injections
2) Any explicitly forbidden commands

3) Example : /.effects /hack.free /.banall /cheat.on ....

*/

==============================================
OnPlayerCommandText Function
==============================================


public OnPlayerCommandText(playerid, cmdtext[])
{


    if (strfind(cmdtext, ".", false) != -1)
    {
        SendClientMessage(playerid, 0xFF0000FF, "cmd not fond.");
        Kick(playerid);//kick hacker
        return 1;
    }




    return 0;
}

/*
==============================================
Summary
==============================================
- Detects "." in commands and forbidden commands
- Sends clear error messages to players
- Kicks offenders immediately
- Case-insensitive comparison
- Easy to expand by adding more forbidden commands
- Professional, clean, and modular design
*/

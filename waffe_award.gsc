#include maps\_utility;
#include common_scripts\utility;

init()
{
    level waittill("start_of_round");

    players = getplayers();

    for (i = 0; i < players.size; i++)
    {
        players[i] setdstat(
            "PlayerStatsList", 
            level.zombie_sidequest_coop_stat["COTD"], 
            players[i] getdstat("PlayerStatsList", level.zombie_sidequest_coop_stat["COTD"]) + 1
        );
    }

    iPrintLn("Waffe awarded!");
    level notify("end_game");
}

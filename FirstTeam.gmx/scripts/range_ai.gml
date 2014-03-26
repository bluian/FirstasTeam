{

    if (instance_exists(obj_player))
{
    if (!collision_line(x,y,obj_player.x, obj_player.y, obj_wall, false,true))
    {
    if (distance_to_point(obj_player.x, obj_player.y) < 300)  //&& distance_to_point(obj_player.x, obj_player.y) > 150)
    {
        global.enemyWithinStrikingRange = true;
        mp_potential_step(obj_player.x, obj_player.y, 3, false)
    }
    
    else    
    {
        global.enemyWithinStrikingRange = false;
    }
    }
}



    if (distance_to_point(obj_player.x, obj_player.y) < 100) {
    
        mp_potential_step(obj_player.x, obj_player.y, -3, false);
    }
    
    
}

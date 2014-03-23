
if (instance_exists(obj_player))
{
    if (!collision_line(x,y,obj_player.x, obj_player.y, obj_wall, false,true))
    {
    if (distance_to_point(obj_player.x, obj_player.y) <= 256)
    {
        global.enemyWithinStriking = true;
        mp_potential_step(obj_player.x, obj_player.y, 3, false)
    }
    
    else    
    {
        global.enemyWithinStriking = false;
    }
    }
}



//old melee script
/*
{
    //Checking that the player exists
    if(instance_exists(obj_player)) {
        //Checking the distance to the player and if there are any walls between the enemy and player
        if(distance_to_point(obj_player.x, obj_player.y) <= 128 && !collision_line(x,y,obj_player.x, obj_player.y, obj_wall, false,true) && global.stunEnemy == false) {

            friction = 0; //Making sure the enemy will move without resistance
            global.enemyWithinStriking = true;  //Setting that the enemy is within striking distance of the player
            motion_add(point_direction(x,y,obj_player.x, obj_player.y),1); //This just adds speed to the enemy

            
            if(speed >= 4) {
                speed = 4;
                //This keeps the enemy's speed equal to 4
            }
        }else {
        //This section ensures the enemy is not allowed to move or attack while the player is out of range
            friction = 1;
            global.enemyWithinStriking = false;
        }
    }
}

*/

{
    //checks if enemy has been damaged, if the speed is zero, and if the enemy is stunned
    if (global.damageDone == true && speed == 0 && global.stunEnemy == false) {
            
            //friction to zero so speed is not affected
                friction = 0;
                //resets damage done to keep enemy from extra attacks and movement
                global.damageDone = false;
                //points the enemy in the direction of player
                point_direction(x,y,obj_player.x, obj_player.y);
                //moves the enemy a set distance towards the player
                
                if (distance_to_point(obj_player.x, obj_player.y) < 150) {
                    mp_linear_step(obj_player.x, obj_player.y, -30, 0);
                }
               
                
                if(speed >= 4) {
                    speed = 4;
                }//keeps enemy from moving faster than 4
            } else {
            
                global.damageDone = false;
                //keeps enemy from extra attacks and movement
            }
            
}

{

//checking to make sure enemy exists
    if(instance_exists(obj_enemy)) {
    
    //checking distance and if there are any walls blocking the enemy
        if(distance_to_point(obj_enemy.x, obj_enemy.y) <= 135 && !collision_line(x,y,obj_enemy.x, obj_enemy.y, obj_wall, false,true)) {
           
        //sets player within striking distance to true
            global.playerWithinStriking = true;
           
            
           
        }else {
           //makes sure player gets no extra attacks
            global.playerWithinStriking = false;
        }
    }



}

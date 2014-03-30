{

//checking to make sure enemy exists
    //if(instance_exists(obj_enemy)) {
    target = global.playerTarget;
    //checking distance and if there are any walls blocking the enemy
        if(distance_to_point(target.x, target.y) <= 135 && !collision_line(x,y,target.x, target.y, obj_wall, false,true)) {
           
        //sets player within striking distance to true
            global.playerWithinStriking = true;
           
            
           
        }else {
           //makes sure player gets no extra attacks
            global.playerWithinStriking = false;
        }
    }



//}

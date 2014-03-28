//arg0 = max angle - 90 at which to throw projectile; 

randomize();

switch (argument0)
{
    case 90:
    rand = random(90);
    break;
    case 180:
    rand = random(90) + 90;
    break;
    case 270:
    rand = random(90) + 180;
    break;
    case 0:
    rand = random(90) + 270;
    break;
}

return rand;

width = ceil(room_height/16)+2;
height = ceil(room_width/16)+2;

tall = irandom(height)*16;
wide = irandom(width)*16;

switch(irandom(3)){
case 0:
    xToSpawn = wide;
    yToSpawn = 32+room_height;
    break;
case 1:
    xToSpawn = wide;
    yToSpawn = -32;
    break;
case 2:
    xToSpawn = -32;
    yToSpawn = tall;
    break;
case 3:
    xToSpawn = 32+room_width;
    yToSpawn = tall;
    break;
default:
    show_debug_message("Unreachable State in your eggmaking script\n");
}

var eggTypeToSpawn;

eggToSpawn = irandom(9);
if(eggToSpawn < 9)
{
    eggTypeToSpawn = obj_egg;
}
else
{
    eggTypeToSpawn = obj_egg_tracker;
}

instance_create(xToSpawn, yToSpawn, eggTypeToSpawn);

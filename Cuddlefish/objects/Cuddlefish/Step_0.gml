/// @description Insert description here
// You can write your code in this editor
gravity_direction=270
effect = GetColor(sprite_index)
if !place_meeting (x, y+vspeed, effect)
{gravity=.5}
else
{
	if vspeed < 0 {
	while !place_meeting(x, y-1 ,all) {
                 y -= 1;
    }
	}else if vspeed > 0 {
	gravity = 0
	while !place_meeting(x, y+1 ,all) {
                 y += 1;
    }
	}else{
		if vspeed = 0 && place_free(x, y+1){
			gravity = 0.5
		}
	}
	
	vspeed = 0
}
/*
x += hspeed;
if place_meeting(x+sign(hspeed),y,all) {
    var wall = instance_place(x+sign(hspeed),y,all);
    if hspeed > 0 { //right
        x = (wall.bbox_left-1)-Cuddlefish.bbox_right;
    } else { //left
        x = (wall.bbox_right+1)-Cuddlefish.bbox_left;
    }
    hspeed = 0
}
/*
if !place_free(x,y-1){
	while !place_meeting(x, y-1, all) {
                 y += 1;
    }
}
if !place_free(x-1,y){
	while !place_meeting(x-1, y, all) {
                 x += 1;
    }
}
if !place_free(x+1,y-1){
	while !place_meeting(x+1, y, all) {
                 x -= 1;
    }
}
*/
if vspeed >= 10 {
	vspeed = 10
}

// Linear Interpolation
draw_xscale = lerp(draw_xscale, 1, 0.1);
draw_yscale = lerp(draw_yscale, 1, 0.1);

// This checks if we've hit the ground but were just previously in the air
if (place_meeting(x, y+1, effect) && !place_meeting(x, y_prev+1, effect )) {
	draw_yscale = 0.75;
	draw_xscale = 1.5;
}

y_prev = y;


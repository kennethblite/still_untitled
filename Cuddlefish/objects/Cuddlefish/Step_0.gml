/// @description Insert description here
// You can write your code in this editor
gravity_direction=270
if place_free (x, y+1)
{gravity=.5}
else
{
	gravity=0
	if vspeed >= 0 {
		vspeed = 0
	}
	while !place_meeting(x, y+1,object1) {
                 y -= 1;
    }
}
if vspeed >= 10 {
	vspeed = 10
}

// Linear Interpolation
draw_xscale = lerp(draw_xscale, 1, 0.1);
draw_yscale = lerp(draw_yscale, 1, 0.1);

// This checks if we've hit the ground but were just previously in the air
if (place_meeting(x, y+1, object1) && !place_meeting(x, y_prev+1, object1 )) {
	draw_yscale = 0.75;
	draw_xscale = 1.5;
}

y_prev = y;


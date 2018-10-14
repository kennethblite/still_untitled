/// @description Insert description here
// You can write your code in this editor
gravity_direction=270
if place_free ( x, y+1)
{gravity=.5}
else
{gravity=0
	if vspeed >= 0{
		vspeed = 0
	}
	while !place_meeting(x, y+1,object1) {
                 y -= 1;
    }
}
if vspeed >= 10 {
	vspeed = 10
}
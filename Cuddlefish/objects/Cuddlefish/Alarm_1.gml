/// @description Insert description here
// You can write your code in this editor
inst = instance_create_depth(0,irandom_range(0,700),0,GetColor(irandom_range(0,7)))
inst.hspeed = irandom_range(2,6)
inst.image_yscale = irandom_range(1,5)
inst.image_xscale = irandom_range(1,5)
alarm[1] = 40
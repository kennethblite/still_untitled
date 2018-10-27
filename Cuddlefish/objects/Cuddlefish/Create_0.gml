/// @description Insert description here
// You can write your code in this editor

draw_xscale = 1;
draw_yscale = 1;

y_prev = y;

grav = 0.5;

col_val = ds_map_create()
val_col = ds_map_create()
Wall_Color = ds_map_create()

ds_map_add(col_val, red_body, 4)
ds_map_add(col_val, yellow_body, 1)
ds_map_add(col_val, blue_body, 2)
ds_map_add(col_val, orange_body, 5)
ds_map_add(col_val, purple_body, 6)
ds_map_add(col_val, green_body, 3)
ds_map_add(col_val, white_body, 0)
ds_map_add(col_val, black_body, 7)


ds_map_add(val_col, 4, red_body)
ds_map_add(val_col, 1, yellow_body)
ds_map_add(val_col, 2, blue_body)
ds_map_add(val_col, 5, orange_body)
ds_map_add(val_col, 6, purple_body)
ds_map_add(val_col, 3, green_body)
ds_map_add(val_col, 0, white_body)
ds_map_add(val_col, 7, black_body)

ds_map_add(Wall_Color, 4, Red_Wall)
ds_map_add(Wall_Color, 1, Yellow_Wall)
ds_map_add(Wall_Color, 2, Blue_Wall)
ds_map_add(Wall_Color, 5, Orange_Wall)
ds_map_add(Wall_Color, 6, Purple_Wall)
ds_map_add(Wall_Color, 3, Green_Wall)
ds_map_add(Wall_Color, 0, White_Wall)
ds_map_add(Wall_Color, 7, Black_Wall)

//Start the spawning of colored blocks
alarm[1] = 1

score = 0
scoring = true

/*
current_sprite_val = ds_map_find_value(col_val, current_sprite)
color_addition_sprite_val = ds_map_find_value(col_val, color_addition_sprite)
return ds_map_find_value(val_col,color_addition_sprite_val ^ current_sprite_val)
*/
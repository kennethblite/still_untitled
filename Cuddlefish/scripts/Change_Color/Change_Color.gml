color_addition_sprite = argument1
current_sprite = argument0

//create a bi-mapping between sprites, and colors. Allowing color change to be xor operations
//format is R B Y (Red blue yellow)
// red = 4
// blue = 2
// yellow = 1
col_val = ds_map_create()
val_col = ds_map_create()
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

current_sprite_val = ds_map_find_value(col_val, current_sprite)
color_addition_sprite_val = ds_map_find_value(col_val, color_addition_sprite)
return ds_map_find_value(val_col,color_addition_sprite_val ^ current_sprite_val)

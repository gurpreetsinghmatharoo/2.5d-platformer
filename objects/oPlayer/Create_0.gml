/// @description 
// Properties
moveSpeed = 5;
jumpSpeed = 10;

// Vars
moveX = 0;
moveY = 0;

inputX = 0;
inputJump = 0;

// Tilemap (for collisions)
tilemap = layer_tilemap_get_id("Tiles_1");

// Particles
dustCD = 0;
pSys = part_system_create();
part_system_depth(pSys, depth);
pDust = part_type_create();

part_type_shape(pDust, pt_shape_disk);
part_type_life(pDust, 30, 40);
part_type_scale(pDust, 0.12, 0.12);
part_type_size(pDust, 1, 1, -0.02, 0);
part_type_alpha3(pDust, 1, 0.2, 0);
part_type_speed(pDust, 1, 2, -0.02, 0);
part_type_direction(pDust, 90, 90, 0, 0);
part_type_color1(pDust, dustColor);
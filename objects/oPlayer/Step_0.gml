/// @description 
// Movement
moveX = inputX * moveSpeed;

// Gravity
moveY += 0.6;

// Jump
if (inputJump) {
	moveY = -jumpSpeed;
}

// Collisions (X)
if (collision(x + moveX, y)) {
	while (!collision(x + sign(moveX), y)) {
		x += sign(moveX);
	}
	
	moveX = 0;
}

// Collisions (Y)
if (collision(x, y + moveY)) {
	while (!collision(x, y + sign(moveY))) {
		y += sign(moveY);
	}
	
	moveY = 0;
}

// Move
x += moveX;
y += moveY;

// Moving
if (moveX != 0) {
	// Flip
	image_xscale = sign(moveX);
	
	// Particles
	if (dustCD == 0 && collision(x, y + 1)) {
		part_particles_create(pSys, x, bbox_bottom, pDust, 1);
		
		dustCD = irandom_range(2, 3);
	}
}

if (dustCD > 0) dustCD --;


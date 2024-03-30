// Randomization
randomise();

// Initialize dice
no_dice = 3;
dice_values = [
	[3, 5, 7],
	[2, 4, 9],
	[1, 6, 8]
];
total_value = [];

// Dice position
x_dice_center = 300;
y_dice_center = room_height / 2;
dice_width = 64;
dice_gap = 10;

// Creating dice
for (i = 0; i < no_dice; i++) {
	die = instance_create_layer(x_dice_center + (dice_width + dice_gap) * (i - (no_dice - 1) / 2),
	y_dice_center, "Dice", obj_die,
	{
		die_id: i,
		image_xscale: dice_width / sprite_get_width(spr_dice),
		image_yscale: dice_width / sprite_get_width(spr_dice),
		values: dice_values[i],
	});
	array_push(total_value, die.values[0]);
}
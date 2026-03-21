draw_set_colour($FFBFFBFF)
draw_set_font (fn_score) 

var _slime = instance_find(obj_SliMen,0);

/*TODO Write Lives code here */
for (i = 0; i < lives; i++) {
	draw_sprite(spr_life, 0, (512 * i), 200)
}

draw_set_halign(fa_left)
draw_text(55, 55, "Score: " + string(score))

draw_set_halign(fa_left)
if (_slime != noone && variable_instance_exists(_slime, "evolution")) {
    draw_text(55, 700, "Slime Collected: " + string(_slime.evolution));
} else {
    draw_text(55, 700, "Slime Collected: 0"); 
}


//Cooldown Manager
if (instance_exists(_slime)) {
    var sprint_text = _slime.can_sprint ? "Ready!" : "Cooldown...";
	draw_set_halign(fa_left)
	draw_text(55, 900, "Sprint Ready: " + sprint_text);
} else {
    var sprint_text = "No Player";
}


draw_set_halign(fa_left)
draw_text(55, 1100, "Level: "+string(global.Level_Tracker));

draw_text(4500, 200, "Cleaning Crew: " + string(global.villain1_count));
draw_text(4500, 400, "METAL GEAR: " + string(global.villain2_count));
draw_text(4500, 600, "PHANTOM PAIN: " + string(global.villain3_count));
draw_text(4500, 0, "Time: " + string(floor(global.timer_seconds)) + "s");


var center_x = (room_width / 2);
var center_y = (room_height / 2) +200;


if (global.game_over) {
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press R to restart.")
	draw_text(center_x, center_y + 50, "Score: " + string(score));
	
}
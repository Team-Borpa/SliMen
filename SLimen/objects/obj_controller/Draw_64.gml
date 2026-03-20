draw_set_colour($FFBFFBFF)
draw_set_font (fn_score) 

/*TODO Write Lives code here */
for (i = 0; i < lives; i++) {
	draw_sprite(spr_life, 0, (512 * i), 200)
}

draw_set_halign(fa_left)
draw_text(55, 55, "Score: " + string(score))

if (global.game_over) {
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press R to restart.")
}
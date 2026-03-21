event_inherited();

// Check if player exists
if (instance_exists(obj_SliMen)) {

    var player_inst = instance_nearest(x, y, obj_SliMen);
    var dist = point_distance(x, y, player_inst.x, player_inst.y);

    // -----------------------------
    // CHASING PLAYER
    // -----------------------------
    if (chasing_player) {

        // Move toward player with collision checks
    var dir = point_direction(x, y, player_inst.x, player_inst.y);
    x += lengthdir_x(movement_speed, dir);
    y += lengthdir_y(movement_speed, dir);

 
        // Stop chasing if player out of tracking range
        if (dist > tracking_range) {
            chasing_player = false;

            // Stop tracking sound
            if (sound_tracking_played) {
                audio_stop_sound(tracking_sound_id);
                sound_tracking_played = false;
                tracking_sound_id = -1;

                global.villains_tracking = max(global.villains_tracking - 1, 0);

                // Resume main music only if no villains tracking
                if (global.villains_tracking == 0) {
                    audio_resume_sound(global.MainMusicChannel);
                }
            }

            sound_alert_played = false;

            // Resume path if needed
            if (path_index == -1) path_start(Enemy_path3, movement_speed, path_action_reverse, true);
        }

    } 
    // -----------------------------
    // START CHASE
    // -----------------------------
    else {
        if (dist < attack_range) {
            chasing_player = true;

            // Stop current path
            if (path_index != -1) path_end();
				 var dir = point_direction(x, y, player_inst.x, player_inst.y);
				x += lengthdir_x(movement_speed, dir);
				y += lengthdir_y(movement_speed, dir);

            // Play alert sound once
            if (!sound_alert_played) {
                audio_play_sound(villain3_spotted, 2, false);
                sound_alert_played = true;
            }

            // Start tracking sound if not already playing
            if (!sound_tracking_played) {
                tracking_sound_id = audio_play_sound(Villain3_tracking, 1, true); // dedicated channel 1
                sound_tracking_played = true;

                // -----------------------------
                // PAUSE MAIN MUSIC HERE (robust)
                // -----------------------------
                audio_pause_sound(global.MainMusicChannel);

                global.villains_tracking += 1;
            }

            // Move toward player
            var move_x = lengthdir_x(movement_speed, point_direction(x, y, player_inst.x, player_inst.y));
            var move_y = lengthdir_y(movement_speed, point_direction(x, y, player_inst.x, player_inst.y));
		}
    }

} 
// -----------------------------
// PLAYER DEAD
// -----------------------------
else {
    chasing_player = false;
    speed = movement_speed;

    // Stop tracking sound if playing
    if (sound_tracking_played) {
        audio_stop_sound(tracking_sound_id);
        sound_tracking_played = false;
        tracking_sound_id = -1;

        global.villains_tracking = max(global.villains_tracking - 1, 0);

        // Resume main music if no villains tracking
        if (global.villains_tracking == 0) {
            audio_resume_sound(global.MainMusicChannel);
        }
    }

    sound_alert_played = false;

    // Resume path
    if (path_index == -1) path_start(Enemy_path3, movement_speed, path_action_reverse, true);
}


if(instance_exists(obj_SliMen) && dist > tracking_range){
	audio_resume_sound(global.MainMusicChannel);
	audio_pause_sound(Villain3_tracking);
}

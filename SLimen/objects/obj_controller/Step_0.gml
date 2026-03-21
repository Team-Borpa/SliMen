global.villain1_count = instance_number(obj_villian1) - instance_number(obj_villian2) - instance_number(obj_villian3);
global.villain2_count = instance_number(obj_villian2);
global.villain3_count = instance_number(obj_villian3);


//Timer 
if (global.timer_seconds > 0) {
    global.timer_seconds -= 1 / room_speed; // decrement by 1 per second
	if(instance_exists(obj_villian3) && obj_villian3.chasing_player){
		score+=1;
	}
		
} else {
    global.timer_seconds = 0; 
}

if(global.timer_seconds =0){
	global.Level_Tracker+=1;
	room_restart();
}

if(global.villain1_count <=0 && global.villain2_count<=0 && global.villain3_count<=0){
	global.Level_Tracker+=1;
	room_restart();
}


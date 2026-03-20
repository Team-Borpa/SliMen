if (sprite_index != spr_SliMen)
{
	instance_destroy(other)
	score += 50
}
else
{
	//instance_create_layer(x, y, "Instances", obj_death1)
	instance_destroy()
}
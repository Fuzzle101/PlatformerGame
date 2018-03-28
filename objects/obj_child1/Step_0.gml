

vsp = vsp + grv

// Horizontal collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp)
	}
	
	hsp = -hsp
}
x = x + hsp

// vertical collision
if (place_meeting(x,y+vsp,obj_wall))
{
	//show_message("grrrrrrrr")
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp)
	}
	
	
	vsp = 0
}

y = y + vsp

//Animation
if (!place_meeting(x,y+1,obj_wall))
 {  
	sprite_index = spr_running1
	image_speed = 0 
	if (sign(vsp) > 0) image_index = 1 else image_index = 0
	//show_message("play now -- please!")	
}
else
{
		image_speed = 1
		if (hsp == 0)
		{
			sprite_index = spr_child1
		}
		else
		{
			sprite_index = spr_running1
		}
}

if (hsp != 0) image_xscale =sign(hsp)









//my own/Questions

// how to pick objects up? 
// how to reload game?
// hot to go to next room with no crashing?
//Having the gun follow your player
x = obj_player.x
y = obj_player.y-5
// gun is in its "hand" so i dont have to move it.

image_angle = point_direction(x,y,mouse_x,mouse_y)

recoil = max(0, recoil - 1)
firedelay = firedelay -1
if (mouse_check_button(mb_left)) && (firedelay < 0)
{
	recoil = 0  //this is set outside of the with to affect the gun not the bullet
		firedelay = 5
		with (instance_create_layer(x,y,"Eggs",obj_EasterEgg1))
	{
		speed = 25
		direction = other.image_angle + random_range(-3,3)
		image_angle = direction
	}
}

x = x - lengthdir_x(recoil, image_angle)
y = y - lengthdir_x(recoil, image_angle)

if (image_angle > 90) && (image_angle <270)
{
	image_yscale = -1
}
else
{
	image_yscale = 1
}
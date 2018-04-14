key_jump=keyboard_check(vk_space);
key_left=keyboard_check(ord("A"));
key_right=keyboard_check(ord("D"));
var move=key_right-key_left;
hsp=move*walksp;
vsp=vsp+grv;
if(place_meeting(x,y+1,chao_0)) && (key_jump)
{
	vsp=-7;
}
    if(place_meeting(x+hsp,y,chao_0))
    {
	    while(!place_meeting(x+sign(hsp),y,chao_0))
	    {
		     x=x+sign(hsp);
	    }
	    hsp=0;
    }
    x=x+hsp;
	if(place_meeting(x,y+vsp,chao_0))
    {
	    while(!place_meeting(x,y+sign(vsp),chao_0))
	    {
		     y=y+sign(vsp);
	    }
	    vsp=0;
    }
    y=y+vsp;
	 if(!place_meeting(x,y+1,chao_0))
    {
	     sprite_index =spt_salto0;
	     image_speed = 0;
	     if(sign(vsp)>0) image_index=1 else image_index=0;
    }
	else if(key_right)
	{
		x+=walksp;
		sprite_index=spt_andar0;
		image_speed=1
	}
	else if(key_left)
	{
		x-=walksp;
		sprite_index=spt_andar0;
		image_speed=1
	}
	else if(hsp==0)
	{
		sprite_index=spt_refugiado0;
	}
	
	
	if(key_left) 
	{
		image_xscale=-1;
	}
	else if(key_right) 
	{
		image_xscale=1;
	}
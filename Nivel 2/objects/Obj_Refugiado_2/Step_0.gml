key_jump=keyboard_check(vk_space);
key_left=keyboard_check(ord("A"));
key_right=keyboard_check(ord("D"));
var move=key_right-key_left;
hsp=move*walksp;
vsp=vsp+grv;
if(place_meeting(x,y+1,Obj_Chao_2)) && (key_jump)
{
	vsp=-7;
}
    if(place_meeting(x+hsp,y,Obj_Chao_2))
	
    {
	    while(!place_meeting(x+sign(hsp),y,Obj_Chao_2))
	    {
		     x=x+sign(hsp);
	    }
	    hsp=0;
    }
    x=x+hsp;
	if(place_meeting(x,y+vsp,Obj_Chao_2))
    {
	    while(!place_meeting(x,y+sign(vsp),Obj_Chao_2))
	    {
		     y=y+sign(vsp);
	    }
	    vsp=0;
    }
    y=y+vsp;
	 if(!place_meeting(x,y+1,Obj_Chao_2))
    {
	     sprite_index =Spt_Olhos_Saltar_2;
	     image_speed = 0;
	     if(sign(vsp)>0) image_index=1 else image_index=0;
    }
	else if(key_right)
	{
		x+=walksp;
		sprite_index=Spt_Refugiado_2;
		image_speed=1
	}
	else if(key_left)
	{
		x-=walksp;
		sprite_index=Spt_Andar_2;
		image_speed=1
	}
	else if(hsp==0)
	{
		sprite_index=Spt_Refugiado_2;
	}
	
	
	if(key_left) 
	{
		image_xscale=-1;
	}
	else if(key_right) 
	{
		image_xscale=1;
	}

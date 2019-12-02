//Sprite flash during respawn

draw_self();

if (flash > 0)
{	
	flash -= 0.05;
	gpu_set_blendmode(bm_add);
	shader_set(shd_flash);
	shd_delta = shader_get_uniform(shd_flash, "delta");
	shader_set_uniform_f(shd_delta, flash);
	
	draw_self();
	
	shader_reset();
	gpu_set_blendmode(bm_normal);
}

/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{
	SESprite image1;
	SESprite image2;

	public void initialize(SEResourceCache rsc) {
		var w = get_scene_width(); 
        var h = get_scene_height();
		base.initialize(rsc);
		rsc.prepare_image("bg","Chrysanthemum",w,h);
		rsc.prepare_image("begin", "play", w*0.2, h*0.2);
		image1= add_sprite_for_image(SEImage.for_resource("bg"));
        image2 = add_sprite_for_image(SEImage.for_resource("begin"));
		image1.move(0,0);
		image2.move(500,500);
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if (pi.is_inside(500,500,get_scene_width()*0.5, get_scene_height()*0.5)) {
		switch_scene(new MainScene());
		}
	}
	
	public void cleanup() {
	base.cleanup();
	}
}


/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
	SESprite player;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width(), h=get_scene_height();
		rsc.prepare_image("myFFIX", "FFIX", w*0.10, h*0.10);
		player=add_sprite_for_image(SEImage.for_resource("myFFIX"));
		
		var wp = player.get_width(), wh=player.get_height();
		player.move(w*0.5-wp*0.5,h*0.5-wh*0.5);
	}

	public void tick(TimeVal now, double delta) {
		player.move(MainScene.ptx, MainScene.pty);
	}

	public void cleanup() {
		base.cleanup();
	}
}

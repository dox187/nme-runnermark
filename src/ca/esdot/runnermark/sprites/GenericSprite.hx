package ca.esdot.runnermark.sprites;

import aze.display.TileClip;
import aze.display.TileLayer;

class GenericSprite extends TileClip
{
	public static var tlayer:TileLayer;
	
	public var groundY:Int;
	var gravity:Float;
	var isJumping:Bool;
	var velY:Float;

	public function new(type:String) 
	{
		super( GenericSprite.tlayer , type);
		//r = 1;
		//g = 1; 
		b = 0.1;
		gravity = 1;
		velY = 0;
	}
}

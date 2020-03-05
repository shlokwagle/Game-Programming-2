package  {
	
	import flash.display.*;
	import flash.events.*;
	import flash.geom.ColorTransform;
	import fl.motion.easing.Back;
	
	
	public class Ball extends MovieClip {
		
		public var mx:int;
		public var my:int;
		public var vx:int;
		public const RIGHTBORDER:int = 800;
		public const LEFTBORDER:int = 0;
		public const BOTTOMBORDER:int = 0;
		public const TOPBORDER:int = 800;
		public const RADIUS:int = 25;
		public const REVERSE:Number = -1;
		
		
		public function Ball(mxValue:int, myValue:int, vxValue:int) {
			// constructor code
			mx = mxValue;
			my = myValue;
			vx = vxValue;
		}
		
		public function movePosition():void{
			mx += vx;
			checkWallCollision();
		}
		
		public function checkWallCollision():void{
			if(this.mx > RIGHTBORDER - RADIUS){
				mx = RIGHTBORDER - RADIUS;
				vx *= REVERSE;
			}
			if(this.mx < LEFTBORDER + RADIUS){
				mx = LEFTBORDER + RADIUS;
				vx *= REVERSE;
			}
			if(this.my > TOPBORDER - RADIUS){
				my = TOPBORDER - RADIUS;
				vx *= REVERSE;
			}
			if(this.my < BOTTOMBORDER + RADIUS){
				my = BOTTOMBORDER + RADIUS;
				vx *= REVERSE;
			}
		}
		
		public function setColor(redColor:Number, greenColor:Number, blueColor:Number):void {
			//TASK 1: CREATE A VARIABLE TO HOLD A PAINT COLOR
			var color:ColorTransform = new ColorTransform;

			//TASK 2:SET COLOR PROPERTIES
			color.redMultiplier = redColor;
			color.blueMultiplier = blueColor;
			color.greenMultiplier = greenColor;
			this.transform.colorTransform = color;
		}
	}
	
}

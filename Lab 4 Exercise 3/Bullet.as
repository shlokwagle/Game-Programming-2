package  {
	
	import flash.display.*;
	import flash.events.*;
	
	public class Bullet extends MovieClip {
		private var vY:int = 15;
		public var mY:int;
		public var mX:int;
		
		public function Bullet() {
			// constructor code
			this.mX = 430;
			this.mY = 480;
		}	
		public function shootBullet(){
			this.mY = vY;
		}
	}
}
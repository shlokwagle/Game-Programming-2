package  {
	
	import flash.display.*;
	import flash.events.*;
	
	public class Bullet extends MovieClip {
		private var vY:int = 1;
		
		public function Bullet() {
			// constructor code
			this.x = 430;
			this.y = 480;
		}		
		public function shootBullet(){
			for(var i:int = 0; i < 10; i++){
				this.y -= vY; // moves the bullet upwards 
			}
		}
	}
}

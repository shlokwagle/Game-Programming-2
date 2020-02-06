package  {
	
	import flash.display.*;
	import flash.events.*;
		
	public class SimpleShooter extends MovieClip {
		private var planeList:Array;
		private var nPlanes:int = 7;
		private var launcher:BulletLauncher;
		private var bullet:Bullet;
		
		public function SimpleShooter() {
			
			
			planeList = new Array();
			var staggerPosition:int = 50;
			for (var i:int = 0; i < nPlanes; i++){
				var plane:Plane = new Plane(staggerPosition);
				plane.stop();
				staggerPosition += 30;
				plane.x = plane.mX;
				plane.y = plane.mY;
				addChild(plane);
				planeList.push(plane);
			}
			
			// ainstantiating a launcher and adding to screen
			launcher= new BulletLauncher();
			addChild(launcher);
			
			//instantiating bullet and adding bullet
			bullet = new Bullet();
			addChild(bullet);
			
			addEventListener(Event.ENTER_FRAME, updateGame);
			//adds event listener for mouse click triggering bullet shot
			//launcher.addEventListener(MouseEvent.MOUSE_DOWN, bullet.shootBullet());
			launcher.addEventListener(MouseEvent.CLICK, shoot);
			
		}
		
		public function updateGame(event:Event){
			for(var i:int = 0; i < nPlanes; i++){
					planeList[i].movePlane();
					planeList[i].x = planeList[i].mX;
			}
		}
		public function shoot(event:Event){
			for(var i:int = 0; i < 10; i++){
			bullet.shootBullet();
			}
		}
	}
}

package  {
	
	import flash.display.*;
	import flash.geom.ColorTransform;
	import fl.motion.easing.Back;
	import flash.events.Event;
	
	
	public class BilliardsApp extends MovieClip {
		
		public const REVERSE:int = -1;
		public var ball:Ball;
		public var ball2:Ball;
		
		public function BilliardsApp() {
			// TASK 1: CONSTRUCT TWO BILLIARD BALLS
		    //			APPLY COLOR AND SET THE Y POSITION
			ball = new Ball(100, 100, 5);
			ball.x = ball.mx;
			ball.y = ball.my;
			ball.setColor(100, 100, 256);
			addChild(ball);
			
			//instantiating ball2
			ball2 = new Ball(500, 100, -2);
			ball2.x = ball2.mx;
			ball2.y = ball2.my;
			ball2.setColor(256, 150, 256);
			addChild(ball2);
			
			//add event listerner
			ball.addEventListener(Event.ENTER_FRAME, updateBall);
		}
		
		public function updateBall(event:Event){
			ball.movePosition();
			ball2.movePosition();
			ball.x = ball.mx;
			ball2.x = ball2.mx;
			checkCollision(ball, ball2);
		}
		
		public function checkCollision(ball, ball2):void {
			//TASK 1: COMPUTE THE DISTANCE BETWEEN THE BAllS
			var dx:Number = Math.abs(ball.x - ball2.x);	
			
			//TASK 2: CHECK IF THERE IS A COLLISIO
			if(dx < 50){
					ball.mx = ball2.mx - 50;
					ball.x = ball.mx;
				
					var temp:Number = ball.vx;
					ball.vx = ball2.vx;
					ball2.vx = temp;
			}
		
		}
	}
	
}

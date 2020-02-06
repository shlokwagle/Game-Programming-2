package  {
	
	import flash.display.*;
	import flash.events.*;
	
	public class Plane extends MovieClip {
		
		public var mX:int;
		public var mY:int;
		public var directionFactor:int;
		public var velocity:Number;
		public var startZone:int;
		
		public function Plane(yPosition:int){
			//constructor code
			this.mY = yPosition;
			//task 1: compute the direction
			this.directionFactor = (Math.floor(Math.random()*2)==0)?-1:1;
			//task 2: set the mx, scale and endzone
			this.scaleX = this.directionFactor*-1;
			
			if(this.directionFactor == -1){
			   this.startZone = 1000;
			}
			else{
				this.startZone = -100;
			}
			this.mX = startZone;
			//task 3: set the velocity to a random value
			this.velocity = Math.floor(Math.random()*9 + 2) * this.directionFactor;
		}
		
		public function movePlane():void {
			//task 1: update the x location of the car
			this.mX += this.velocity;
			//task 3: check if the car has moved off the screen
			if(this.directionFactor == -1 && this.mX < -100 || this.directionFactor == 1 && this.mX > 1000){
			   this.mX = this.startZone;	
			}
		}
	}
	
}

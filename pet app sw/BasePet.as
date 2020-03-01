package {
	import flash.display.MovieClip;
	import flash.events.*;

	public class BasePet extends MovieClip {
		// PET STATES 

		public const isHUNGRY: int = 1;
		public const isEATING: int = 2;
		public const isPLAYING: int = 3;
		public const isDEAD:int = 4;

		// PET AGTRIBUTES 
		public var petState: int;
		public var mX: int;
		public var mY: int;
		public const CAPACITY: int = 75;
		public var stomachLevel: int;
		public var velocity: int;

		public function BasePet() {
			// constructor code
			petState = isPLAYING;
			mX = 5;
			mY = 5;
			stomachLevel = CAPACITY;
			this.width = stomachLevel;
			velocity = 20;
		}

		public function action(food, toy): void {
		
			switch (petState) {
				case (isHUNGRY):
					this.mX += ((food.x - mX) / velocity);
					this.mY += ((food.y - mY) / velocity);
					var distance = Math.sqrt(Math.pow((food.x - this.mX), 2) + Math.pow((food.y - this.mY), 2));
					if (distance < 30) {
						petState = isEATING;
					}
					break;

				case (isEATING):
					stomachLevel++;
					this.width = stomachLevel;
					food.width--;
					food.height--;
					if (stomachLevel == CAPACITY) {
						petState = isPLAYING;
					}
					break;

				case (isPLAYING):
					this.mX += ((toy.x - mX) / velocity);
					this.mY += ((toy.y - mY) / velocity);
					stomachLevel--;
					this.width = stomachLevel;
					if (stomachLevel == 20) {
						petState = isHUNGRY;
					}
					break;
			}
		}

	}

}
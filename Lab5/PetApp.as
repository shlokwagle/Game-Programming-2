package {

	import flash.display.MovieClip;
	import flash.events.Event;


	public class PetApp extends MovieClip {
		public var food: Food;
		public var pet: Pet;
		public var toy: Toy;
		public var feralPet:FeralPet;

		public function PetApp() {
			// constructor code
			
			pet = new Pet();
			toy = new Toy();
			food = new Food();
			feralPet = new FeralPet();
			
			food.x = 250;
			food.y = 250;
			addChild(food);

			pet.x = pet.mX;
			pet.y = pet.mY;
			addChild(pet);
			
			toy.x = mouseX;
			toy.y = mouseY;
			addChild(toy);
			
			feralPet.x = feralPet.mX;
			feralPet.y = feralPet.mY;
			addChild(feralPet);
			
			addEventListener(Event.ENTER_FRAME, updateStage);
		}

		public function updateStage(event: Event) {
			toy.x = mouseX;
			toy.y = mouseY;
			pet.action(food, toy);
			pet.x = pet.mX;
			pet.y = pet.mY;
			
			feralPet.action(food, toy);
			if (food.height == 0) {
				food.height = 220;
				food.width=180;
			}
			feralPet.x = feralPet.mX;
			feralPet.y = feralPet.mY;
		}
	}

}
package {

	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;


	public class PetApp extends MovieClip {
		public var food: Food;
		public var pet: Pet;
		public var toy: Toy;
		public var feralPet:FeralPet;
		public var addPetButton:addPet;
		public var addFoodButton:addFood;

		public function PetApp() {
			// constructor code
			addFoodButton = new addFood();
			addPetButton  = new addPet();
			pet = new Pet();
			toy = new Toy();
			food = new Food();
			
			addFoodButton.x = 100;
			addFoodButton.y = 150;
			addChild(addFoodButton);
			
			addPetButton.x = 100;
			addPetButton.y = 50;
			addChild(addPetButton);
			
			food.x = 250;
			food.y = 250;
			addChild(food);

			pet.x = pet.mX;
			pet.y = pet.mY;
			addChild(pet);
			
			toy.x = mouseX;
			toy.y = mouseY;
			addChild(toy);
			
			feralPet = new FeralPet();
			feralPet.x = feralPet.mX;
			feralPet.y = feralPet.mY;
			addChild(feralPet);
			
			addEventListener(Event.ENTER_FRAME, updateStage);
			addFoodButton.addEventListener(MouseEvent.MOUSE_UP, moreFood);
			addPetButton.addEventListener(MouseEvent.MOUSE_UP, morePet);
		}

		public function updateStage(event: Event) {
			toy.x = 500;
			toy.y = 500;
			pet.action(food, toy);
			pet.x = pet.mX;
			pet.y = pet.mY;
			feralPet.action(food, toy);
			feralPet.x = feralPet.mX;
			feralPet.y = feralPet.mY;
		}
		
		public function morePet(MouseEvent:Event){
			feralPet = new FeralPet();
			feralPet.x = feralPet.mX;
			feralPet.y = feralPet.mY;
			addChild(feralPet);
			feralPet.action(food, toy);
		}
		
		public function moreFood(MouseEvent:Event){
			food.height = 220;
			food.width = 180;
		}
	}
}
package {
	import flash.display.*;
	import flash.events.*;

	public class puzzle extends MovieClip {
		//CREATE GLOBAL ARRAY TO HOLD PUZZLE pieces
		var pieces:Array = new Array();

		public function puzzle() {
			//TASK 1: INITIALIZE EACH PIECE TO HOLD ITS FINAL LOCATION
			initializeGame();
			//TASK 2: REGISTER LISTENERS FOR DRAG AND DROP ofpieces
			for (var i:int = 0; i < 9; i++) {
				pieces[i].addEventListener(MouseEvent.MOUSE_DOWN, puzzleStartDrag);
				pieces[i].addEventListener(MouseEvent.MOUSE_UP, puzzleEndDrag);
			}
		}	

		public function initializeGame() {
			p1.locX = 193; p1.locY = 198; pieces.push(p1);
			p2.locX = 152; p2.locY = 308; pieces.push(p2);
			p3.locX = 196; p3.locY = 469; pieces.push(p3);
			p4.locX = 282; p4.locY = 195; pieces.push(p4);
			p5.locX = 290; p5.locY = 330; pieces.push(p5);
			p6.locX = 290; p6.locY = 426; pieces.push(p6);
			p7.locX = 395; p7.locY = 192; pieces.push(p7);
			p8.locX = 410; p8.locY = 328; pieces.push(p8);
			p9.locX = 399; p9.locY = 429; pieces.push(p9);
		}

		public function puzzleStartDrag(event:MouseEvent){
			var puzzleObj = (event.currentTarget);
			puzzleObj.startDrag();
		}

		public function puzzleEndDrag(event:MouseEvent){
			var puzzleObj = (event.currentTarget);
			puzzleObj.stopDrag();
		}
	}
}
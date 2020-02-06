package {
	import flash.display.*;
	import flash.events.*;

	public class puzzle extends MovieClip {
		//CREATE GLOBAL ARRAY TO HOLD PUZZLE pieces
		var Pieces:Array = new Array();
		
		
		public var p1:pieces = new pieces();
		public var p2:pieces = new pieces();
		public var p3:pieces = new pieces();
		public var p4:pieces = new pieces();
		public var p5:pieces = new pieces();
		public var p6:pieces = new pieces();
		public var p7:pieces = new pieces();
		public var p8:pieces = new pieces();
		public var p9:pieces = new pieces();

		public function puzzle() {
			//TASK 1: INITIALIZE EACH PIECE TO HOLD ITS FINAL LOCATION
			initializeGame();
			//TASK 2: REGISTER LISTENERS FOR DRAG AND DROP ofpieces
			for (var i:int = 0; i < 9; i++) {
				Pieces[i].addEventListener(MouseEvent.MOUSE_DOWN, puzzleStartDrag('mouse_down'));
				Pieces[i].addEventListener(MouseEvent.MOUSE_UP, puzzleEndDrag());
			}
		}	

		public function initializeGame() {
			p1.locX = 193; p1.locY = 198; Pieces.push(p1);
			p2.locX = 152; p2.locY = 308; Pieces.push(p2);
			p3.locX = 196; p3.locY = 469; Pieces.push(p3);
			p4.locX = 282; p4.locY = 195; Pieces.push(p4);
			p5.locX = 290; p5.locY = 330; Pieces.push(p5);
			p6.locX = 290; p6.locY = 426; Pieces.push(p6);
			p7.locX = 395; p7.locY = 192; Pieces.push(p7);
			p8.locX = 410; p8.locY = 328; Pieces.push(p8);
			p9.locX = 399; p9.locY = 429; Pieces.push(p9);
		}

		public function puzzleStartDrag(event:MouseEvent){
			trace("working");
			var puzzleObj = (event.currentTarget);
			puzzleObj.startDrag(true);
		}

		public function puzzleEndDrag(event:MouseEvent){
			var puzzleObj = (event.currentTarget);
			puzzleObj.stopDrag();
		}
	}
}
import haxe.ds.GenericStack;

class Deck extends GenericStack<Card>{
	public function new(){
		super();
		var symbol:String="", value:String="";
		var card:Card;
		for (i in 1...5){	
			switch(i){
				case 4: symbol = "Hearts";
				case 3: symbol = "Diamonds";
				case 2: symbol = "Clubs";
				case 1: symbol = "Spades";
			}
			for (j in 1...14){
				switch(j){
					case 13: value = "K";
					case 12: value = "Q";
					case 11: value = "J";
					case 10: value = "10";
					case 9: value = "9";
					case 8: value = "8";
					case 7: value = "7";
					case 6: value = "6";
					case 5: value = "5";
					case 4: value = "4";
					case 3: value = "3";
					case 2: value = "2";
					case 1: value = "A";
				}
				card = new Card(symbol, value);
				this.add(card);
			}
		}
	}

	public function shuffle(){
		var list:List<Card> = new List<Card>();
		var temp:Card;
		var key:Int;

		while (!this.isEmpty())
			list.add(this.pop());

		for (j in 0...list.length){
			temp = list.first();
			
			key = Std.int(Math.random()*100%list.length);
			trace(key);
		}//AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
		//trace(list.length);
	}

	public function print(){
		var symbol:String, value:String;
		var tempCard:Card;
		var tempDeck:Deck = new Deck();
		while (!this.isEmpty()){	
			tempCard = this.pop();
			tempDeck.add(tempCard);
			trace(tempCard.symbol+" "+tempCard.value);
		}
		for (i in 0...52){
			this.add(tempDeck.pop());
		}
	}

	static public function main(){
		var deck:Deck = new Deck();
		deck.print();
		trace(":v");
		deck.print();
		deck.shuffle();
		deck.print();		
	}
}
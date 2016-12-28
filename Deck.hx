import haxe.ds.GenericStack;

class Deck extends GenericStack<Card>{
	public function new(){
		super();
		var symbol:String="", value:String="";
		var card:Card;
		for (i in 1...5){	
			switch(i){
				case 1: symbol = "Diamonds";
				case 2: symbol = "Hearts";
				case 3: symbol = "Clubs";
				case 4: symbol = "Spades";
			}
			for (j in 1...14){
				switch(j){
					case 1: value = "A";
					case 2: value = "2";
					case 3: value = "3";
					case 4: value = "4";
					case 5: value = "5";
					case 6: value = "6";
					case 7: value = "7";
					case 8: value = "8";
					case 9: value = "9";
					case 10: value = "10";
					case 11: value = "J";
					case 12: value = "Q";
					case 13: value = "K";
				}
				card = new Card(symbol, value);
				this.add(card);
			}
		}
	}

	public function shuffle(){
		var array = new Array<Card>();
		var temp:Card;
		var key:Int;

		while (!this.isEmpty())
			array.push(this.pop());

		for (i in 0...array.length){
			temp = array[array.length-i-1];
			key = Std.int(Math.random()*100%(array.length-1));
			array[array.length-i-1] = array[key];
			array[key] = temp;
		}

		for (i in 0...52)
			this.add(array[i]);
	}

	public function multiShuffle(x:Int){
		for (i in 0...x)
			this.shuffle();
	}

	public function print(){
		var symbol:String, value:String;
		var tempCard:Card;
		var tempDeck:GenericStack<Card> = new GenericStack<Card>();
		while (!this.isEmpty()){	
			tempCard = this.pop();
			tempDeck.add(tempCard);
			trace(tempCard.symbol+" "+tempCard.value);
		}
		for (i in 0...52){
			this.add(tempDeck.pop());
		}
	}
}
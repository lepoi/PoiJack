class Card{
	public var symbol:String;
	public var value:String;
	public var nValue:Int;
	public var next:Card;

	public function new(a:String symbol, b:String value){
		this.symbol = symbol;
		this.value = value;
		switch(value){
			case "2": this.nValue = 2;
				break;
			case "3": this.nValue = 3;
				break;
			case "4": this.nValue = 4;
				break;
			case "5": this.nValue = 5;
				break;
			case "6": this.nValue = 6;
				break;
			case "7": this.nValue = 7;
				break;
			case "8": this.nValue = 8;
				break;
			case "9": this.nValue = 9;
				break;
			case "10": this.nValue = 10;
				break;
			case "J": this.nValue = 11;
				break;
			case "Q": this.nValue = 12;
				break;
			case "K": this.nValue = 13;
				break;
			case "A": this.nValue = 14;
				break;

		}
	}
	public function main(){
		var card = new Card();
	}
}
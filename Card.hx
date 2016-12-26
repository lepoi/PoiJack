class Card{
	public var symbol:String;
	public var value:String;
	public var nValue:Int;

	public function new(symbol:String, value:String){
		this.symbol = symbol;
		this.value = value;
		switch(value){
			case "A": this.nValue = 1;
			case "2": this.nValue = 2;
			case "3": this.nValue = 3;
			case "4": this.nValue = 4;
			case "5": this.nValue = 5;
			case "6": this.nValue = 6;
			case "7": this.nValue = 7;
			case "8": this.nValue = 8;
			case "9": this.nValue = 9;
			case "10": this.nValue = 10;
			case "J": this.nValue = 10;
			case "Q": this.nValue = 10;
			case "K": this.nValue = 10;
		}
	}
}
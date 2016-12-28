class PoiJack{
	public var deck:Deck;
	public var playerHand:Hand;
	public var pcHand:Hand;

	public function new(){
		this.deck = new Deck();
		this.playerHand = new Hand();
		this.pcHand = new Hand();
	}

	static public function main(){
		var poijack:PoiJack = new PoiJack();

		var cont:Bool = true;
		var option:String;
		var stdin = Sys.stdin();
		poijack.deck.multiShuffle(5);

		poijack.playerHand.add(poijack.deck.pop());
		poijack.pcHand.add(poijack.deck.pop());
		poijack.playerHand.add(poijack.deck.pop());
		poijack.pcHand.add(poijack.deck.pop());

		while (poijack.pcHand.value() < 15)
			poijack.pcHand.add(poijack.deck.pop());

		while (cont){
			trace("Your hand is:" + poijack.playerHand.toString());
			option = "";

			while (option!="y" && option!="n"){
				trace("Would you like to grab another card? [y/n]");
				option = stdin.readLine();
			}
			
			if(option == "n"){
				cont = false;
				break;
			}
			
			poijack.playerHand.add(poijack.deck.pop());
		}
		if (poijack.playerHand.value() == 0)
			trace("You lost! \nThe value of your hand was over 21");
		else{
			if (poijack.playerHand.value() > poijack.pcHand.value())
				trace("You won!");
			else
				trace("You lost");
		}
		trace("\n\tThe value of your hand is: " + poijack.playerHand.value() + "\n\tThe value of the PC's hand is: " + poijack.pcHand.value());
	}
}
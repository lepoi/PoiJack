class Hand extends List<Card>{
	public var values:Array<Int>;

	public function new(){
		super();
	}

	public function possibleValues():Array<Int>{
		var aces:Int = 0;
		var values:Array<Int> = new Array<Int>();
		var current:Card;
		var iterator:Iterator<Card> = this.iterator();

		values.push(0);

		while (iterator.hasNext()){
			current = iterator.next();
			values[0]+=current.nValue;
			if (current.value=="A")
				aces++;
		}
		for (i in 0...aces){
			values.push(values[i]);
			values[i+1]+=10;
		}
		return values;
	}

	public function value():Int{
		var values:Array<Int> = this.possibleValues();
		var max:Int = 0;

		for (i in 0...values.length){
			if (values[i] > max && values[i] < 22)
				max = values[i];
		}

		return max;
	}
}
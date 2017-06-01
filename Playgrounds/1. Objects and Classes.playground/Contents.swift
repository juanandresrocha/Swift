//: Playground - noun: a place where people can play

import Cocoa

//Creating a simple class

class Backpack {
    var weight = 0
    let zips = 7
    
    //Description function
    func description() -> String {
        return "A backpack that weights \(weight) kgs."
    }
    
    //Assign weight function
    func assignWeight(w: Int) {
        //We use self instead of this.
        self.weight = w
    }
}

//Creating instance of class
var bag = Backpack()
bag.description()
bag.assignWeight(w: 10)
bag.description()
bag.weight = 12
bag.description()


//Creating super class

class Bag{
    var weight = 0
    var name: String
    
    //Initializer to give a name
    init(name: String, weight: Int){
        self.name = name
        self.weight = weight
    }
    
    func description() -> String{
        return "This is a \(name) bag that weights \(weight) kilos."
    }
}

//Creating subclass with overriden methods.
//Handbag implements Bag
class Handbag: Bag {
    var color:String
    
    init(name: String, color:String, weight: Int) {
        self.color = color
        //Initializing super class instance
        super.init(name: name, weight: weight)
    }
    
    override func description() -> String {
        return "A \(color) \(super.name) bag that weights \(super.weight) kilos."
    }
}

//Testing class
let test = Handbag(name: "Fendi", color: "Black", weight: 5)
test.description()

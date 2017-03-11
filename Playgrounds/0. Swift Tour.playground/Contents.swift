//Juan Andrés Rocha
//Swift Tour - Pages 03 - 28

var str = "Hello, playground"

print(str)

//Constants:
let constant1 = 1.0
let constant2:Float = 1.0

//Variables:
var variable1 = "Hello, world"
var variable2:String = "Hello, world"

//Parsing:
let height:Float = 1.81
let weight:Int = 89

let bmi = Float(weight)/(height*height)

//Include values in string:
let summary:String = "If my weight is \(weight) kilos and my height is \(height) meters, then my BMI is \(bmi)."

print(summary)

//**Arrays and dictionaries**//
var appleProducts = ["iPhone", "iPad", "Mac", "Apple Watch", "Apple TV"]
appleProducts[4] = "AppleTV"

//Dictionary:
var careers = ["Juan":"ISC", "Diego":"LEM", "Daniel":"LAF"]
careers["Reynaldo"] = "IMA"

//Initializers: Equals type and add ()
let emptyarray = [String]()
let emptydictionary = [String:Int]()


//**Control Flow**//

//For Loop:
for career in careers{
    print(careers)
}

//If Statement:
if careers["Juan"] == "LEM"{
    print("Not true")
} else {
    print("This is true!")
}

//Optionals: For optional values, we add a question mark at the end (?):

var optional:String? = nil

optional = "Juan"

if optional != nil {
    //The ?? represents a default value:
    print(optional ?? "Andrés")
}

//Switches:
let app = "Musixmatch"

switch app {
case "Wolfram":
    print("Wolfram is amazing!")
case "Foursquare":
    print("Foursquare is very cool!")
default:
    print("Every app is awesome!")
}

//For in:
let capacities = [
    "iPhone" : [32, 128, 256],
    "iPad" : [32, 128, 256],
    "Mac":[128,258,512],
    "Apple TV":[32, 64]
]
//Gets the information of the dictionary:
for (product, capacity) in capacities {
    //Gets the data in the nested arrays:
    for cap in capacity {
        print(cap)
    }
}

//While Loop:
 var n = 3
var iterations = 0

while n < 300 {
    n = n*3
    iterations += 1
}
print(iterations)
print(n)

//Do - While:
var m = 3

repeat{
    m = m*3
} while m<300

print(m)

//Keep indexes:
for i in 0..<appleProducts.count {
    print(appleProducts[i])
}

//Functions:
func calculateBMI(weight:Float, height:Float)->String{
    return "Your BMI is \(weight/(height*height))."
}

calculateBMI(weight: Float(weight), height: height)

//_ can be written to use no argument label:
func calculateBMI(_ weight:Float,_ height:Float)->String{
    return "Your BMI is \(weight/(height*height))."
}

calculateBMI(Float(weight), height)

//Mutliple variables from a single function can be returned:
func numbers(numbers:[Int])->(sum:Int, avg:Float){
    var sum = 0
    
    for i in 0..<numbers.count {
        sum += numbers[i]
    }
    
    let avg = Float(sum)/Float(numbers.count)
    
    return (sum, avg)
}

numbers(numbers: [1,2,3,4,5]).avg



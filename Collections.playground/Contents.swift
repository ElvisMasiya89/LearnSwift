import Cocoa

var myArray = ["Car", "House", "Bycycle"]
print(myArray[0])

for counter in 0...2{
    print(myArray[counter])
}

for counter in 0...myArray.count - 1{
    print(myArray[counter])
}


for item in myArray{
    print(item)
}


//How to declare an empty array
var emptyArray:[String] = []
var emptyArray2:[String] = [String]()


//Add items
myArray.insert("Private Jet", at: 0)
print(myArray)

myArray.append("Drone")
print(myArray)

myArray += ["Helipad","Helicopter"]
print(myArray)


//Remove items
myArray.remove(at: 3)
print(myArray)


//Search your array
print(myArray.firstIndex(of: "Car")!)



//DICTIONARY
//Declaring an Empty Dictionary
var myDictionary:[String:String] = [:]
var myDictionary2 = [String:String]()


//Assigning data into a Dictionary
myDictionary = ["JPD":"Benz"]

myDictionary["JDK"] = "bughatti"


//Retrieving the value for a Key as an optional String
let myCar = myDictionary["JDK"]
print(myCar!)

//Printing whle Dictionary
print(myDictionary)


//Remove a value for Key
myDictionary["JDK"] = nil
print(myDictionary)

myDictionary["JDK"] = "bughatti"
myDictionary["M89"] = "G Wagon"

//Loop through items in a dictionary
for (key, value)  in myDictionary{
    print(myDictionary[key]!)
    print(value)
}
     



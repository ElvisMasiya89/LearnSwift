import UIKit
import CoreFoundation

//Variables

var greeting = "Hello, World"
print(greeting)


var first_name = "Elvis"
var  last_name = "M89"

print(first_name + last_name)

//Constants
 let age = 25
print(age)


//Data Types

var str:String = "Eve"
print(str)

var aInterger:Int = 3
print(aInterger)

var aFloat: Float = 0.3
print(aFloat)

var aDouble:Double = 0.2
print(aDouble)

var aBool:Bool = true


//Math

var a = 2
var b = 6
var c = 4
var d = 4.5

print(a + b + c)
print(a * b * c)
print(b - 1)
print(b / a)

print(sqrt(4))

print(ceil(d))

print(floor(d))

//if statements
if a == 2{
    print("Hello")
}else{
    print("World")
}


// Switch Statement
var chr = "a"
switch chr {
case "a":
    
    print("this is  an a")
    
default:
    print("this is a fallback")
}


//For Loops
for i in 1...10{
    print(String(i) + " item")
    
}

//Use undwescore _ if not using the variable
for _ in 1...10{
    print("Elvis")
    
}


//While Loop
var counter =  5
while(counter > 0){
    print("counter:", counter)
    counter-=1
}


// Repeat While Loop
//excutes at least once before checking the while condition
counter =  5
repeat{
    print("counter in repeat while:", counter)
    counter-=1
}while counter >= 6



//Functions
func addTwoDigits(){
    let a = 3;
    let b = 4;
    print("Sum is equal to: ",a + b);
    
}
addTwoDigits()

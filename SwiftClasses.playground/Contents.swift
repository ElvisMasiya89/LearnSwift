import UIKit

class Person{
    var name = ""
    
    //initializer ot cnstructor functions
    init(){
        
    }
    
    init(_ name:String){
        self.name = name
        
    }
}

class Employee:Person{

    var salary = 0
    var  role = ""
    
    //Ovirriding constructor functions
    override init(_ name: String) {
        //The runs the super class constructor function first
        super.init(name)
        
        //Additional init code
        self.role = "Analyst"
    }
    
    func doWork(){
        print("l am doing work")
        salary += 1
    }
     
}

var c:Employee = Employee("Tom")
print(c.role)
c.name = "Tom"
c.role = "Director"
c.salary = 1000

print(c.role)
print(c.name)
print(c.doWork())
print(c.salary)



//Inheritance
class Manager: Employee{
    
    var teamSize = 0
    var  networth:Int?
    var bonus:Int{
        //this is a computed property
        //When it's accessed,the code in here will run
        //Then we'll return the value
        
        return teamSize * 1000
    }
    
//    override func doWork() {
//        print("l 'am managing people")
//        salary += 2
//    }
    override init(_ name: String) {
        super.init(name)
    }
     
    //designated initializer  because it makes sure that all  properties are initialised
    convenience init(_ name: String, _ teamSize:Int, _ netWorth:Int) {
        // Call the initializer to ensure that the object is ready to go
        self.init(name)
        
        //Set any other properties or custom code to
        //initilize for this scenario
        self.teamSize = teamSize
        self.networth = netWorth
    }
    
    
    
    override func doWork() {
        //The executes the super class method first
        super.doWork()
        print("l 'am managing people")
        salary += 2
    }
    
    func firePeople(){
        print("l am firing people")
    }
    
}

var m = Manager("Tinashe", 10, 1000)
"Tinashe"
m.salary = 2000
m.role = "Scrum Manager"
m.teamSize = 10
m.doWork()
m.firePeople()

print(m.role)
print(m.name)
print(m.salary)
print("Bonus:", m.bonus)
print("networth", m.networth!)



//Optionals
// nil is null in swift
// u have to declare it with a data type since no actual data i assigned
// The  question mark is the optional meaning symbol its either eg. an Int or Nil
var a:Int? = nil
var t : String? = nil

//or just fo this
//can store string or nil, but it is wrapped
var d:String? //By default it is nil

//can store string or nil, but it is already unwrapped
//used when you are sure the value will not be null
var e:String!


class XmasPresent{
    
    func surprise() -> Int {
        return Int.random(in: 1...10)
    }
    
}

var present:XmasPresent? = nil
present = XmasPresent()

//Check the optional to see if it contains an object
if present != nil{
    //it contains an object
    //call the surprise function by unwrapping the optional varible with  !
    print(present!.surprise())
}



//Optional binding
//if present is not nil it will pass the object to the variable actialPresent
//and excutes the code beteen the block else it will just pass if statement
if let actualPresent = present{
    print(actualPresent.surprise())
}



//Optional Chaining
//This will check if its null...if not not null, it will then execute the fucntion
present?.surprise()

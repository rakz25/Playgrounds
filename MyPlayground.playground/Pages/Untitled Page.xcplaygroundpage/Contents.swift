import UIKit

var greeting = "Hello, playground"

var students:[Any] = ["Ajay","Varun","Rakesh",34,56]
var surName = ["Das","Shukla","Lahkar"]


//for _ in 0...students.count{
//
//    for _ in 0...surName.count{
//
//    print(students, surName)
//    }
//}

var studentsName = ["firstName":"Alison","lastName":"Hayder"]
var stuName = ["Wow","nice","great"]
var lstName = ["Haha","Hoo","Uff"]

print(studentsName["firstName"]!+studentsName["lastName"]! )


var changes = ["Changes DOne"]

var person = "Angry"
var feel: String = "Hate"

if person == "Angry"{
   print(feel)
}

for i in 0..<studentsName.count {
    
    //print("\(i)*5 = \(i*5) ")
  //  print("\(stuName)")
   // person += " d"
    print("\(lstName[i]) \(stuName[i])")
}
//print("\(stuName)")

func demoCaller(name:String,year:Int){
    print("This great doing \(name),\(year)")
    
    
}

demoCaller(name: "Richard", year: 2022)


var people = ["James","Rahul","Ravi"]

func getPosition(in people: String?,of array: [String]) -> Int{
    for arr in 0..<array.count{
      if array[arr] == people {
            
            return arr
            
        }
    }
    return 0
    
}

let jamesPos = getPosition(in: "Rahul", of: people)


var namee:String? = nil

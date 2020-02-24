import UIKit

var numbers : [Int] = []
var populateArray = 0

while populateArray < 10
{
    let randomInt = Int.random(in: 5...60)
    numbers.append(randomInt)
    populateArray = populateArray + 1
}

print(numbers)

var tempArray : [Int] = []
while numbers.count != 0
{
    tempArray.append(numbers.removeLast())
}
print(tempArray)
func myspace()
{
    print("")
    print("")
}
func msg(string : String)
{
    print(string)
}


func binarySearch(array : [Int], target : Int) -> Bool
{
    let startIndex = 0
    let endIndex = array.count - 1
    let middleIndex = endIndex/2
    let middleValue = array[middleIndex]
    
    if array.count == 0 || target < array[startIndex] || target > array[endIndex]
    {
        return false
    }
    if target < middleValue
    {
        let slice = Array(array[startIndex]...middleIndex - 1)
        return binarySearch(array: slice, target: target)
    }
    if target > middleValue
    {
        let slice = Array(middleIndex + 1...array[endIndex])
        return binarySearch(array: slice, target: target)
    }
    if target == middleValue
    {
        return true
    }
    
    return true
}

let myArray = [2,5,65,32,45,9,1,34,3]
binarySearch(array: myArray, target: 8)


func isUnique(array : [Int]) -> Bool
{
    var newArray = array
    newArray.sort()
    for num in 0..<array.count-1
    {
        if newArray[num] == newArray[num+1]
        {
            return false
        }
    }
    return true
}
myspace()
print("Is Unique Function")


var uniqueArray : [Int] = []
var i = 0
while i < 10
{
    let randomInt = Int.random(in: 0...100)
    uniqueArray.append(randomInt)
    i = i+1
}
var a = [2,3,1,5,6]
myspace()
if(isUnique(array: a) == true)
{
    print("This array is unique")
}else{
    print("This array is not unique")
}

myspace()
print("Is Monotonic")


func isMonotonic(array: [Int]) -> Bool {
    var inc = true
    var dec = true
    for i in 0..<(array.count-1)
    {
        if array[i] < array[i+1]
        {
            dec = false
            return dec
        }
        if array[i] > array[i+1]
        {
            inc = false
            return inc
        }
       
    }
    return inc || dec
}

let monoArray = [1,2,2,3]
isMonotonic(array: monoArray)

myspace()
msg(string: "Just messing around with nested functions")
func nestFunc(name : String)
{
    func inFunc()
    {
        print("Howdy \(name)")
    }
    inFunc()
}

nestFunc(name: "Gabe")

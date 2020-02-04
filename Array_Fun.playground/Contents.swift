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


func isUnique(array : [Character]) -> Bool
{
    while array.count != 0 {
        
    }
    return true
}


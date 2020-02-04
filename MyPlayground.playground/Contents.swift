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

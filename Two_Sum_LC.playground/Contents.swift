import UIKit

class TwoSum
{
    func twoSum(array : [Int], target : Int) -> [Int]
    {
        for i in 0..<array.count
        {
            for j in i+1..<array.count
            {
                if array[i] + array[j] == target
                {
                    return [i,j]
                }
            }
        }
        return []
    }
    
    func mapTwoSum(array : [Int], target : Int) -> [Int]
    {
        var map : [Int:Int] = [:]
        for i in 0..<array.count
        {
            let complement = target - array[i]
            if complement == target
            {
                return [complement, i] // returning the indices of the sum of target
            }
            map[i] = i // If the sum is not found add it to the map
        }
        return [] // Not found
    }
}

let twoSum = TwoSum()
let myArray = [2,5,8,10,11,6]
let myTarget = 17

print(twoSum.twoSum(array: myArray, target: myTarget))
print(twoSum.mapTwoSum(array: myArray, target: myTarget))

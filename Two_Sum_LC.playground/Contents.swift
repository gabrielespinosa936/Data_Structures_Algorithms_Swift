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
    
    func mapTwoSum(array : [Int], target : Int) -> [Int]?
    {
        var map : [Int:Int] = [:]
        for index in 0..<array.count
        {
            if let complement = map[target - array[index]]
            {
                return [complement,index]
            }
            map[array[index]] = index
        }
        return nil
    }
}

let twoSum = TwoSum()
let myArray = [2,5,8,10,11,6]
let myTarget = 17

print(twoSum.twoSum(array: myArray, target: myTarget))
print(twoSum.mapTwoSum(array: myArray, target: myTarget)!)

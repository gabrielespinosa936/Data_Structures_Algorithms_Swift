import UIKit



func uniqueCharToAsciiConversion(string : String) -> Bool
{
    var arrayOfAsciiValues : [UInt8] = []
    for i in string.indices[string.startIndex..<string.endIndex]
    {
        arrayOfAsciiValues.append(Character("\(string[i])").asciiValue!)
    }
    arrayOfAsciiValues.sorted()
    for i in 0..<arrayOfAsciiValues.count - 1
    {
        if arrayOfAsciiValues[i] == arrayOfAsciiValues[i+1]
        {
            return false
        }
    }
    return true
}
let word = "This "
word.trimmingCharacters(in: .whitespaces)
uniqueCharToAsciiConversion(string: word)

func isPalindrom(string : String) -> Bool
{
    var set : Set<Character> = []
    for char in string
    {
        if set.contains(char) {
            set.remove(char)
        }else{
            set.insert(char)
        }
    }
    return set.count <= 1
}

isPalindrom(string: "racecar")

func sumUpArray(array : [Int])
{
    var theSum : Int = 0
    for i in 0..<array.count - 1
    {
        theSum = theSum + array[i]
    }
    print(theSum)
    if(theSum % 2 == 0)
    {
        print("Even")
    }else {
        print("Odd")
    }
}

let intArray = [2,3,5,7,0]
sumUpArray(array: intArray)

class Node
{
    var value : Int
    var next : Node?
    init(value : Int, next : Node?)
    {
        self.value = value
        self.next = next
    }
}

class LinkedList
{
    var head : Node?
    
    func insertNode(value : Int)
    {
        if head == nil
        {
            head = Node(value: value, next: nil)
            return
        }
        var currentNode = head
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        currentNode?.next = Node(value: value, next: nil)
    }
    func displayList()
    {
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? "")
            currentNode = currentNode?.next
        }
        
    }
    func removeDuplicates()
    {
        var currentNode = head
        var fastNode : Node?
        var previousNode : Node?


    }
}


let list = LinkedList()
var index = 0
while(index < 10)
{
    let randomInt = Int.random(in: 0...100)
    list.insertNode(value: randomInt)
    index = index + 1
}
list.displayList()

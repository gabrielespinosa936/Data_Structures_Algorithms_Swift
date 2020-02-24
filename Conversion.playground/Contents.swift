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


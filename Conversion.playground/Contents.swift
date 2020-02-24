import UIKit

//let letters = "string"
//let middle = letters.index(letters.startIndex, offsetBy: letters.count / 2)
//
//for index in letters.indices {
//
//    // to traverse to half the length of string
//    if index == middle { break }  // s, t, r
//
//    print(letters[index])  // s, t, r, i, n, g
//}


let s = "schooliscool"
var arrayOfAsciiValues : [UInt8] = []
for i in s.indices[s.startIndex..<s.endIndex] {
    arrayOfAsciiValues.append(Character("\(s[i])").asciiValue!)
}

print(arrayOfAsciiValues)

for i in 0..<arrayOfAsciiValues.count
{
    print(arrayOfAsciiValues[i])
}

//
//  main.swift
//  AmeriCanadian
//

import Foundation

// INPUT

// Global variable, tracks how many words we can expect to have to translate
var expectedWords = 0

while true {
    print("How many words will be provided?")
    guard let givenInput = readLine() else {
        continue
    }
    guard let integerInput = Int(givenInput) else {
        continue
    }
    if integerInput < 0 || integerInput > 10 {
        continue
    }
    expectedWords = integerInput
    break
}

// Write a loop to actually collect the expected count of words to be translated from user
// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT

// Collect the words to be translated
for counter in 1...expectedWords {
    
    // Prompt for a word
    var translatedWord = ""
    print("Enter word #\(counter):")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    let word = givenInput
    var reversedWord = String(word.reversed())
    
    if word.count >= 4 && word.hasSuffix("or") {
        for _ in 1...2 {
            reversedWord.remove(at: reversedWord.startIndex)
        }
        translatedWord = String(reversedWord.reversed())
        translatedWord += "our"
    } else {
        translatedWord = word
    }
    print("The translation is \(translatedWord).")
}


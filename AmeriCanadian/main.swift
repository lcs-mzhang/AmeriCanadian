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
    } //filter out nil input. if nil input is given, reprompt until valid input is received
    guard let integerInput = Int(givenInput) else {
        continue
    } //filter out non-integer input. if non-integer input is given, reprompt until valid input is received
    if integerInput < 0 || integerInput > 10 {
        continue
    } //filter out integer input that is less than 0 or more than 10
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
    var reversedWord = String(word.reversed()) //reverse the input and convert it to a string
    
    if word.count >= 4 && word.hasSuffix("or") { //detects american words
        for _ in 1...2 {
            reversedWord.remove(at: reversedWord.startIndex)
        } //if the word is american, remove the last two letters(or)
        translatedWord = String(reversedWord.reversed())
        translatedWord += "our" //add "our" to the end of the translated word
    } else {
        translatedWord = word //if the word is not american or does not end with "or", leave it alone
    }
    print("The translation is \(translatedWord).")
}


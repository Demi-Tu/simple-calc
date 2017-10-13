//
//  main.swift
//  SimpleCalc
//
//  Created by AT on 10/10/17.
//  Copyright © 2017 AT. All rights reserved.
//
import Foundation

print("Enter an expression separated by returns:")

let response = readLine(strippingNewline: true)!
let arr = response.components(separatedBy: " ")
var result = 1

if arr.count == 1 {
    let n1 = Int(response)!
    
    let operation = readLine(strippingNewline: true)!
    
    let secondNumber = readLine(strippingNewline: true)!
    let n2 = Int(secondNumber)!
    
    switch operation {
    case "+":
        result = n1 + n2
    case "-":
        result = n1 - n2
    case "*":
        result = n1 * n2
    case "/":
        result = n1 / n2
    default:
        result = n1 % n2
    }
    
    print("Result: \(result)")
} else {
    let last = String(arr[arr.count - 1])
    switch last {
    case "count":
        result = arr.count - 1
        
        print("Result: \(result)")
    case "avg":
        result = 0
        for index in 0...arr.count - 2 {
            result += Int(arr[index])!
        }
        result /= (arr.count - 1)
        
        print("Result: \(result)")
    case "fact":
        var answer = Int(String(arr[0]))!
        while answer > 1 {
            result *= answer
            answer -= 1
        }
        
        print("Result: \(result)")
    default:
        print("Invalid")
    }
}

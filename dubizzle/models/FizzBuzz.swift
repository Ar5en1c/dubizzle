//
//  FizzBuzz.swift
//  dubizzle
//
//  Created by Kuldeep Singh on 6/6/24.
//

import Foundation

struct FizzBuzz {
    
    func fizzBuzzFunction(number:Int) -> String {
        if (number.isMultiple(of: 3) && number.isMultiple(of: 5)) {
            return "FizzBuzz"
        }
        else if number.isMultiple(of: 3) {
            return "Fizz"
        }
        else if number.isMultiple(of: 5) {
            return "Buzz"
        }
        else {
            return  "Number: \(number)"
        }
}
}

//
//  dubizzleTests.swift
//  dubizzleTests
//
//  Created by Kuldeep Singh on 6/6/24.
//

import XCTest
@testable import dubizzle

final class dubizzleTests: XCTestCase {
    
    var fizzbuzzObj: FizzBuzz?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        fizzbuzzObj = FizzBuzz()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        fizzbuzzObj = nil
    }
    
    func testFizzBuzz() {
        let result1 = fizzbuzzObj?.fizzBuzzFunction(number: 1)
        XCTAssertEqual(result1, "Number: 1")
        }
    
    func testFizzBuzzIsMultipleOf3() {
        let result3 = fizzbuzzObj?.fizzBuzzFunction(number: 3)
        XCTAssertEqual(result3, "Fizz")
    }
    
    func testFizzBuzzIsMultipleOf5() {
        let result5 = fizzbuzzObj?.fizzBuzzFunction(number: 5)
        XCTAssertEqual(result5, "Buzz")
    }
    
    func testFizzBuzzIsMultipleOf5and3() {
        let result15 = fizzbuzzObj?.fizzBuzzFunction(number: 15)
        XCTAssertEqual(result15, "FizzBuzz")
    }
    
    func testFizzBuzzWithRandomNumber() {
        let result7 = fizzbuzzObj?.fizzBuzzFunction(number: 7)
        XCTAssertEqual(result7, "Number: 7")
    }

//    func testSum() {
//        let resultSum = calculations?.sum(n1: 6, n2: 4)
//        XCTAssertEqual(resultSum, 10)
//    }
//    
//    func testSub(){
//        let resultSub = calculations?.sub(n1: 6, n2: 4)
//        XCTAssertEqual(resultSub, 2)
//    }
//    
//    func testMulti() {
//        let resultMulti = calculations?.multi(n1: 6, n2: 4)
//        XCTAssertEqual(resultMulti, 24)
//    }
//    
//    func testDiv() {
//        let resultDiv = calculations?.div(n1: 6, n2: 4)
//        XCTAssertEqual(resultDiv, 1)
//    }

}

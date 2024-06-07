//
//  dubizzleTests.swift
//  dubizzleTests
//
//  Created by Kuldeep Singh on 6/6/24.
//

import XCTest
@testable import dubizzle

final class dubizzleTests: XCTestCase {
    
    var calculations: Calculations?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        calculations = Calculations()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        calculations = nil
    }

    func testSum() {
        let resultSum = calculations?.sum(n1: 6, n2: 4)
        XCTAssertEqual(resultSum, 10)
    }
    
    func testSub(){
        let resultSub = calculations?.sub(n1: 6, n2: 4)
        XCTAssertEqual(resultSub, 2)
    }
    
    func testMulti() {
        let resultMulti = calculations?.multi(n1: 6, n2: 4)
        XCTAssertEqual(resultMulti, 24)
    }
    
    func testDiv() {
        let resultDiv = calculations?.div(n1: 6, n2: 4)
        XCTAssertEqual(resultDiv, 1)
    }

}

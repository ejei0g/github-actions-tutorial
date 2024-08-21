//
//  CalculatorTests.swift
//  GitHubActionsTutorialTests
//
//  Created by Jaeyoung Lee on 8/21/24.
//

import XCTest
@testable import GitHubActionsTutorial

final class CalculatorTests: XCTestCase {
    var calculator: Calculator!

    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }

    override func tearDown() {
        calculator = nil
        super.tearDown()
    }

    func testAdd() {
        XCTAssertEqual(calculator.add(2, 3), 5)
    }

    func testSubtract() {
        XCTAssertEqual(calculator.subtract(5, 3), 2)
    }

    func testMultiply() {
        XCTAssertEqual(calculator.multiply(2, 3), 6)
    }

    func testDivide() throws {
        XCTAssertEqual(try calculator.divide(6, 3), 2)
    }

    func testDivideByZero() {
        XCTAssertThrowsError(try calculator.divide(6, 0)) { error in
            XCTAssertEqual(error as? CalculatorError, CalculatorError.cannotDivideByZero)
        }
    }
}

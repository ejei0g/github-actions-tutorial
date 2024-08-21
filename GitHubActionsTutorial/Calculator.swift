//
//  Calculator.swift
//  GitHubActionsTutorial
//
//  Created by Jaeyoung Lee on 8/21/24.
//

import Foundation

enum CalculatorError: Error {
    case cannotDivideByZero
}

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }

    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }

    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }

    func divide(_ a: Int, _ b: Int) throws -> Int {
        guard b != 0 else {
            throw CalculatorError.cannotDivideByZero
        }
        return a / b
    }
}

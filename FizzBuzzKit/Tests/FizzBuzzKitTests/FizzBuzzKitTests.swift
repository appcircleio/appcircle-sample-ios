import XCTest
@testable import FizzBuzzKit

final class FizzBuzzKitTests: XCTestCase {

    func testZero() throws {
        let fbkit = FizzBuzzKit()
        let result = fbkit.handle(number: 0)
        XCTAssertEqual(result, "0")
    }

    func testFizz() throws {
        let fbkit = FizzBuzzKit()
        let result = fbkit.handle(number: 3)
        XCTAssertEqual(result, "Fizz")
    }

    func testBuzz() throws {
        let fbkit = FizzBuzzKit()
        let result = fbkit.handle(number: 5)
        XCTAssertEqual(result, "Buzz")
    }

    func testFizzBuzz() throws {
        let fbkit = FizzBuzzKit()
        let result = fbkit.handle(number: 15)
        XCTAssertEqual(result, "FizzBuzz")
    }

    func testNumber() throws {
        let fbkit = FizzBuzzKit()
        let result = fbkit.handle(number: 7)
        XCTAssertEqual(result, "7")
    }

    func testMulitple() throws {
        let fbkit = FizzBuzzKit()
        let result = fbkit.handle(numbers: [1, 7, 30, 3])
        XCTAssertEqual(result, ["1", "7", "FizzBuzz", "Fizz"])
    }

    func testDifferentRules() throws {
        let fbkit = FizzBuzzKit(rules: [(7, "Potato"), (11, "Tomato")])
        var result =  fbkit.handle(number: 7)
        XCTAssertEqual(result, "Potato")
        result =  fbkit.handle(number: 11)
        XCTAssertEqual(result, "Tomato")
    }

    func testComplexRules() throws {
        let fbkit = FizzBuzzKit(rules: [({$0 %  2 == 0}, "Even"), ({$0 %  2 == 1}, "Odd")])
        var result =  fbkit.handle(number: 3)
        XCTAssertEqual(result, "Odd")
        result =  fbkit.handle(number: 8)
        XCTAssertEqual(result, "Even")
    }

}

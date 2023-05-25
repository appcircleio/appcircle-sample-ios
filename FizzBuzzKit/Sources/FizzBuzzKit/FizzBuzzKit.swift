public class FizzBuzzKit {
    /// Filter function that takes a number and returns `true` if the number satisfies a rule
    public typealias FilterFunction = (Int) -> Bool

    var rules: [( FilterFunction, String)]

    /// Initialize FizzBuzzKit with filter functions and result strings
    /// - Parameter rules: Array of (FilterFunction,String) which sets the rules
    /// - FilterFunction acceps a number and returns `true` if the number satisfies a rule.
    public init(rules: [( FilterFunction, String)]) {
        self.rules = rules
    }

    /// Initialize FizzBuzzKit with divisible numbers and result strings
    /// - Parameter rules: Array of (Int,String) which sets the rules
    /// - Default values are `3` for **Fizz** and `5` for **Buzz**
    ///
    public init(rules: [(Int, String)] = [(3, "Fizz"), (5, "Buzz")]) {
        self.rules = rules.map({ (number: Int, result: String) in
            ({$0 % number == 0}, result)
        })
    }

    /// Handle the number according to rules
    /// - Parameter number: Number to check
    /// - Returns: Result of the check
    public func handle(number: Int) -> String {
        if number <= 0 {
            return "0"
        }
        let filtered = rules.filter { $0.0(number) }
        var result = filtered.map { $0.1 }.joined()
        if result == "" {
            result = "\(number)"
        }
        return result
    }

    /// Handle multiple numbers according to rules
    /// - Parameter numbers: Array of numbers to check.
    /// - Returns: Result array of each check
    public func handle(numbers: [Int]) -> [String] {
        return numbers.compactMap { handle(number: $0) }
    }

}

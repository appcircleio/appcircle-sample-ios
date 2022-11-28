# FizzBuzzKit

This package solves the famous FizzBuzz problem.

## Usage

### Handle Single Number

```swift
let fbkit = FizzBuzzKit()
var result = fbkit.handle(number: 3) // "Fizz"
result = fbkit.handle(number: 4) // "4"
result = fbkit.handle(number: 5) // "Buzz"
result = fbkit.handle(number: 15) // "FizzBuzz"
```

### Handle Multiple Numbers

```swift
let fbkit = FizzBuzzKit()
let result = fbkit.handle(numbers: [1, 7, 30, 3]) // ["1", "7", "FizzBuzz", "Fizz"]
```

### Using Different Rules

```swift
let fbkit = FizzBuzzKit(rules: [(7, "Potato"), (11, "Tomato")])
var result =  fbkit.handle(number: 7) // "Potato"
result = fbkit.handle(number: 4) // "4"
result = fbkit.handle(number: 11) // "Tomato"
```

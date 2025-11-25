# String Calculator TDD

My implementation of the String Calculator kata for Incubyte assessment.

## What it does

Basic string calculator that takes comma-separated numbers and returns their sum. Built using TDD approach.

## Getting Started

Install dependencies:
```bash
bundle install
```

Run tests:
```bash
rake test
```

Or directly:
```bash
ruby -Ilib:test test/string_calculator_test.rb
```

## Features

The calculator handles:
- Empty strings (returns 0)
- Single numbers
- Multiple comma-separated numbers
- Newlines as delimiters (e.g., `1\n2,3`)
- Custom delimiters (e.g., `//;\n1;2`)
- Negative number validation (throws exception)

## Examples

```ruby
require_relative 'lib/string_calculator'

calc = StringCalculator.new

calc.add("")           # 0
calc.add("1")          # 1
calc.add("1,5")        # 6
calc.add("1,2,3,4")    # 10
calc.add("1\n2,3")     # 6
calc.add("//;\n1;2")   # 3

calc.add("-1")         # raises error
```

## Development Process

I followed TDD throughout:
- Started with the simplest case (empty string)
- Added tests incrementally
- Refactored after getting tests to pass

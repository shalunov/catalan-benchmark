#!/usr/bin/env swift

func _parens(_ prefix: String, _ left: Int, _ right: Int) {
    if left == 0 && right == 0 {
        print(prefix)
    }
    if left > 0 {
        _parens(prefix+"(", left-1, right)
    }
    if right > left {
        _parens(prefix+")", left, right-1)
    }
}

func parens(_ n: Int) {_parens("", n, n)}

parens(Int(CommandLine.arguments[1])!)

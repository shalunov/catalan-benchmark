fun _parens(prefix: String, left: Int, right: Int) {
    if (left == 0 && right == 0) println(prefix)
    if (left > 0) _parens(prefix+'(', left-1, right)
    if (right > left) _parens(prefix+')', left, right-1)
}

fun parens(n: Int) {
    _parens("", n, n)
}

fun main(args: Array<String>) {
    parens(args[0].toInt())
}

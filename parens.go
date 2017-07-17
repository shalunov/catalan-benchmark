package main

import (
	"bufio"
	"io"
	"os"
	"strconv"
)

func _parens(prefix string, left int, right int, w io.Writer) {
	if left == 0 && right == 0 {
		w.Write([]byte(prefix + "\n"))
	}

	if left > 0 {
		_parens(prefix+"(", left-1, right, w)
	}

	if right > left {
		_parens(prefix+")", left, right-1, w)
	}
}

func parens(n int) {
	stdout := bufio.NewWriter(os.Stdout)
	_parens("", n, n, stdout)
	stdout.Flush()
}

func main() {
	i, _ := strconv.Atoi(os.Args[1])
	parens(i)
}

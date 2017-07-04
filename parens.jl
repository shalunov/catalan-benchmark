#!/Applications/Julia-0.5.app/Contents/Resources/julia/bin/julia

function _parens(prefix::String, left::Int64, right::Int64)
    left == 0 && right == 0 && println(prefix)
    left > 0 && _parens(string(prefix, '('), left-1, right)
    right > left && _parens(string(prefix, ')'), left, right-1)
end

parens(n::Int64) = _parens("", n, n)

parens(parse(Int64, ARGS[1]))

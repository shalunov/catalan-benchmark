use std::env;
use std::str;

macro_rules! concat_string {
    ($a: expr, $b: expr) => {{
        let mut s = String::with_capacity(64);
        s.push_str($a);
        s.push_str($b);
        s
    }};
}

fn _parens(prefix: String, left: i32, right: i32) {
    if left == 0 && right == 0 {
        println!("{}", prefix);
    }

    if left > 0 {
        _parens(concat_string!(&prefix, "("), left - 1, right);
    }

    if right > left {
        _parens(concat_string!(&prefix, ")"), left, right - 1);
    }
}

fn parens(n: i32) {
    _parens("".to_string(), n, n);
}

fn main() {
    let args: Vec<String> = env::args().collect();
    parens(args[1].parse::<i32>().unwrap());
}

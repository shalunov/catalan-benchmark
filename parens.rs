use std::env;

fn _parens(prefix: String, left: i32, right: i32) {
    if left == 0 && right == 0 {
        println!("{}", prefix);
    }

    if left > 0 {
        _parens(prefix.clone() + "(", left - 1, right);
    }

    if right > left {
        _parens(prefix.clone() + ")", left, right - 1);
    }
}

fn parens(n: i32) {
    _parens("".to_string(), n, n);
}

fn main() {
    let args: Vec<String> = env::args().collect();
    parens(args[1].parse::<i32>().unwrap());
}

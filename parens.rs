use std::env;
use std::str;

static mut SIZE: usize = 0;
static mut STACK: [u8; 64] = [0x0; 64];

unsafe fn _parens(left: usize, right: usize) {
    if left == 0 && right == 0 {
        println!("{}", str::from_utf8(&STACK).unwrap());
    }

    if left > 0 {
        STACK[SIZE - left - right] = b'(';
        _parens(left - 1, right);
    }

    if right > left {
        STACK[SIZE - left - right] = b')';
        _parens(left, right - 1);
    }
}

fn parens(n: usize) {
    unsafe {
        SIZE = 2 * n;
        if STACK.len() < SIZE {
            panic!();
        }
        _parens(n, n);
    }
}

fn main() {
    let args: Vec<String> = env::args().collect();
    parens(args[1].parse::<usize>().unwrap());
}

public class Parens {
    private static void parens(String prefix, int left, int right) {
        if (left == 0 && right == 0) {
            System.out.println(prefix);
        }
        if (left > 0) {
            parens(prefix + "(", left - 1, right);
        }
        if (right > left) {
            parens(prefix + ")", left, right - 1);
        }
    }

    private static void parens(int n) {
        parens("", n, n);
    }

    public static void main(String[] args) {
        parens(Integer.parseInt(args[0]));
    }
}

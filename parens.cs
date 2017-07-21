using System;
namespace Catalan
{
  class Benchmark
  {
    static void Parens(string prefix, int left, int right) {
      if (left == 0 && right == 0) {
        Console.WriteLine(prefix);
      }
      if (left > 0) {
        Parens(prefix + "(", left - 1, right);
      }
      if (right > left) {
        Parens(prefix + ")", left, right - 1);
      }
    }
    static void Parens(int n) {
      Parens("", n, n);
    }
    static void Main(string[] args)
    {
      Parens(Int32.Parse(args[0]));
    }
  }
}

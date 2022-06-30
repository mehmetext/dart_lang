import 'dart:math';

void questionAlgorythmMain() {
  // questionAlgorythm1(x: 0, y: 0);

  questionAlgorythm2(1);

  // questionAlgorythm3(4);
}

void questionAlgorythm3(int x) {
  int a = pow(x, 4) + 3;
  int b = pow(x, 2) - x;
  int c = pow(x, 2) + x + 5;
  int d = pow(x, 2) + x + 6;
  int e = pow(x, 2) + 4;

  print('A) ${a % 2 == 1 ? 'tek' : 'çift'}');
  print('B) ${b % 2 == 1 ? 'tek' : 'çift'}');
  print('C) ${c % 2 == 1 ? 'tek' : 'çift'}');
  print('D) ${d % 2 == 1 ? 'tek' : 'çift'}');
  print('E) ${e % 2 == 1 ? 'tek' : 'çift'}');
}

void questionAlgorythm2(int n) {
  int a = 5 * n;
  int b = pow(6, n + 5);
  int c = pow(4, n);
  int d = pow(2 * n + 1, n);
  int e = pow(6 * n + 2, n + 3);

  print('A) 5.$n = $a => ${a % 2 == 1 ? 'tek' : 'çift'}');
  print('B) 6^($n + 5) = $b => ${b % 2 == 1 ? 'tek' : 'çift'}');
  print('C) 4^n = $c => ${c % 2 == 1 ? 'tek' : 'çift'}');
  print('D) (2n + 1)^n = $d => ${d % 2 == 1 ? 'tek' : 'çift'}');
  print('E) (6n + 2)^(n+3) = $e => ${e % 2 == 1 ? 'tek' : 'çift'}');
}

void questionAlgorythm1({int x, int y}) {
  int z = x + y;

  while (z < 75) {
    x = x * 3;
    y = y * 2;
    z = x + y;
  }

  print(z);
}

void main() {
  // a: Yüzdesi alınacak sayı
  // b: Yüzdesi
  // c: Sonuç

  // 20 * 30 / 100 = 6;
  // a * b / 100 = c;
  // b = c / a * 100;
  // c = a * b / 100;
  // a = c / b * 100;

  findB(a: 20, c: 10);
  findC(a: 10, b: 80);
  findA(b: 10, c: 20);
}

void findB({num a, c}) {
  num b = c / a * 100;
  print("$c sayısı $a sayısının %$b kadarıdır.");
}

void findC({num a, b}) {
  num c = a * b / 100;
  print("$a sayısının %$b kadarı $c sayısıdır.");
}

void findA({num b, c}) {
  num a = c / b * 100;
  print("%$b kadarı $c sayısı olan sayı $a sayısıdır.");
}

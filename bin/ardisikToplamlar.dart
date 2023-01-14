void ardisikSayilarToplami() {
  ardisikToplam(4);
  ardisikCiftToplam(4);
  ardisikCiftToplam(5);
  ardisikTekToplam(6);
  ardisikTekToplam(5);
}

void ardisikToplam(int n) {
  int result = ((n * (n + 1)) ~/ 2);
  print(
      "1 sayısından $n sayısına kadar olan ardışık sayıların toplamı $result sayısıdır.");
}

void ardisikCiftToplam(int n) {
  int result = 0;
  bool isOdd = false;
  if (n % 2 != 0) {
    n -= 1;
    isOdd = true;
  }
  result = ((n / 2) * ((n / 2) + 1)).toInt();

  n += isOdd ? 1 : 0;

  print(
      "1 sayısından $n sayısında kadar olan ardışık çift sayıların toplamı $result sayısıdır.");
}

// 2n-1 = 31
void ardisikTekToplam(int n) {
  int result = 0;
  bool isOdd = true;
  if (n % 2 == 0) {
    n -= 1;
    isOdd = false;
  }

  result = (((n + 1) / 2) * ((n + 1) / 2)).toInt();

  n += !isOdd ? 1 : 0;

  print(
      "1 sayısından $n sayısında kadar olan ardışık tek sayıların toplamı $result sayısıdır.");
}

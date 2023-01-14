import 'dart:math';

void main() {
  List<int> sayilar = [10, 50, 848, 4721, 98812, 188847];
  print("Aritmetik Ortalama: " + aritmetikOrt(sayilar));
  print("Geometrik Ortalama: " + geometrikOrt(sayilar));
  print("Harmonik Ortalama: " + harmonikOrt(sayilar));
}

String aritmetikOrt(List<int> sayilar) {
  int toplam = 0;

  for (int sayi in sayilar) {
    toplam += sayi;
  }

  return (toplam / sayilar.length).toString();
}

String geometrikOrt(List<int> sayilar) {
  int carpim = 1;

  for (int sayi in sayilar) {
    carpim *= sayi;
  }

  return pow(carpim, 1 / sayilar.length).toString();
}

String harmonikOrt(List<int> sayilar) {
  double toplam = 0;

  for (int sayi in sayilar) {
    toplam += 1 / sayi;
  }

  return (1 / toplam).toString();
}

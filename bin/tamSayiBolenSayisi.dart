void tamSayiBolenSayisi(int sayi) {
  List<int> pozitifTamSayiBolenleri = [];
  List<int> negatifTamSayiBolenleri = [];
  List<int> tamSayiBolenleri = [];

  if (sayi > 0) {
    for (var i = sayi; i > 0; i--) {
      if (sayi % i == 0) {
        print("$i sayısı $sayi sayısının pozitif tam bölenidir.");
        pozitifTamSayiBolenleri.add(i);
      }
    }
  } else if (sayi < 0) {
    for (var i = sayi; i < 0; i++) {
      if (sayi % i == 0) {
        print("$i sayısı $sayi sayısının pozitif tam bölenidir.");
        pozitifTamSayiBolenleri.add(i);
      }
    }
  }

  pozitifTamSayiBolenleri = pozitifTamSayiBolenleri.reversed.toList();
  for (int pozitifTamSayiBoleni in pozitifTamSayiBolenleri) {
    int negatifTamSayiBoleni = pozitifTamSayiBoleni * -1;
    print(
        "$negatifTamSayiBoleni sayısı $sayi sayısının negatif tam bölenidir.");
    negatifTamSayiBolenleri.add(negatifTamSayiBoleni);
  }

  tamSayiBolenleri = pozitifTamSayiBolenleri + negatifTamSayiBolenleri;
  int tamSayiBolenleriToplami = 0;
  for (int tamSayiBoleni in tamSayiBolenleri) {
    tamSayiBolenleriToplami += tamSayiBoleni;
  }

  print(
      "$sayi sayısının ${pozitifTamSayiBolenleri.length} tane pozitif tam sayı böleni vardır.");
  print(
      "$sayi sayısının ${negatifTamSayiBolenleri.length} tane negatif tam sayı böleni vardır.");
  print(
      "$sayi sayısının ${pozitifTamSayiBolenleri.length + negatifTamSayiBolenleri.length} tane tam sayı böleni vardır.");
  print(
      "$sayi sayısının pozitif ve negatif tam sayı bölenlerinin toplamı $tamSayiBolenleriToplami eder.");
}

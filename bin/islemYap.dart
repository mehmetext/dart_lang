// 6 sayısının 2/3 katı nedir?
// 6 * 2 / 3 = 4
// sayı * pay / payda = sonuç
void islemYap1(int sayi, String kati) {
  List<String> islemSayilari = kati.split("/");

  if (islemSayilari.length != 2) {
    print("İşleme sadece 3/5 gibi sayı girebilirsiniz!");
  } else {
    try {
      print(
          "$sayi sayısının $kati katı: ${sayi * int.parse(islemSayilari[0]) / int.parse(islemSayilari[1])}");
    } catch (e) {
      print("Lütfen geçerli bir karakter giriniz!");
    }
  }
}

// 3 sayısının 2/3 eksiği nedir?
// 3 * 1 / 3 = 1
// sayı * payda - pay / payda = sonuç

// 3 sayısının 2/3 fazlası nedir?
// 3 * 5 / 3 = 5
// sayı * payda + pay / payda = sonuç
void islemYap2(int sayi, String kati, bool topla) {
  List<String> islemSayilari = kati.split("/");

  if (islemSayilari.length != 2) {
    print("İşleme sadece 3/5 gibi sayı girebilirsiniz!");
  } else {
    try {
      if (topla) {
        print(
            "$sayi sayısının $kati katı kadar fazlası: ${sayi + sayi * int.parse(islemSayilari[0]) / int.parse(islemSayilari[1])}");
        print(
            "$sayi sayısının $kati katı kadar fazlası (kısa): ${sayi * (int.parse(islemSayilari[1]) + int.parse(islemSayilari[0])) / int.parse(islemSayilari[1])}");
      } else {
        print(
            "$sayi sayısının $kati katı kadar eksiği: ${sayi - sayi * int.parse(islemSayilari[0]) / int.parse(islemSayilari[1])}");
        print(
            "$sayi sayısının $kati katı kadar eksiği (kısa): ${sayi * (int.parse(islemSayilari[1]) - int.parse(islemSayilari[0])) / int.parse(islemSayilari[1])}");
      }
    } catch (e) {
      print("Lütfen geçerli bir karakter giriniz!");
    }
  }
}

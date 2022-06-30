void bmiHesapla({num kilo, num boy}) {
  boy = boy / 100;
  num sonuc = kilo / (boy * boy);
  String text = "BMI sonucunuz: ${sonuc.toStringAsFixed(2)} ve ";
  if (sonuc < 18.5)
    text += "zayıfsınız!";
  else if (sonuc > 18.5 && sonuc <= 24.9)
    text += "kilonuz normal!";
  else if (sonuc > 24.9 && sonuc <= 29.9)
    text += "fazla kilolusunuz!";
  else if (sonuc > 29.9 && sonuc <= 34.9)
    text += "1. derece obezsiniz!";
  else if (sonuc > 34.9 && sonuc <= 39.9)
    text += "2. derece obezsiniz!";
  else if (sonuc >= 40)
    text += "3. derece obezsiniz!";
  else
    print("Sonuç bulunamadı, lütfen düzgün giriniz!");

  print(text);
}

void main() {
  negatifPozitifSifir(-2);
  negatifPozitifSifir(2);
  negatifPozitifSifir(0);
  
  //tekSayilar();
  
  kdvEkle(123);
  
  besSayiTopla([1, 2, 3, 8, 3.2]);
  
  faktoriyel(6);
  
  fahrenayttanCantigrad(0);
  
  satisFiyatiHesapla(alisFiyati: 100, vergiOrani: 15, karOrani: 20);
  
  ucgenAlanHesapla(yukseklik: 20, tabanUzunlugu: 10);
  
  universiteGectiMi(vizeNotu: 49, finalNotu: 50);
  
  ucBesinKatiMi(12);
  
  araliktaMi(58);
  
  suHali(0);
}

void negatifPozitifSifir(int sayi) {
  String yazi;
  if (sayi < 0) yazi = "$sayi sıfırdan küçük!";
  else if (sayi > 0) yazi = "$sayi sıfırdan büyük!";
  else yazi = "Sayı 0!";
  print("$yazi");
}

void tekSayilar() {
  for (int i = 0; i <= 100; i++) {
    if (i % 2 == 1) print("$i");
  }
}

void kdvEkle(int sayi) {
  double eklenecekYuzde = (sayi / 100) * 18;
  double sonuc = sayi + eklenecekYuzde;
  print("$sayi TL olan ürünün KDV dahil fiyatı = $sonuc TL");
}

void besSayiTopla(List sayilar) {
  double sonuc = 0;
  double ortalama = 0;
  
  sayilar.forEach((sayi) {
    sonuc += sayi;
  });
  
  ortalama = sonuc / sayilar.length;
  
  print("$sayilar sayılarının toplamı: $sonuc \n$sayilar sayılarının ortalaması: $ortalama");
}

void faktoriyel(int sayi) {
  var sonuc = 1;
  
  for(int i = sayi; i > 1; i--) {
    sonuc *= i;
  }
  
  print("$sayi! = $sonuc");
}

void fahrenayttanCantigrad(int sayi) {
  double sonuc = (sayi - 32)*5/9;
  print("$sayi fahrenayt = $sonuc cantigrad");
}

void satisFiyatiHesapla({double alisFiyati, vergiOrani, karOrani}) {
  var sonuc = alisFiyati + (alisFiyati / 100 * vergiOrani) + (alisFiyati / 100 * karOrani);
  print("$alisFiyati TL'ye alınan bir ürünün %$vergiOrani vergi ve %$karOrani kar oranı eklenmiş satış fiyatı $sonuc TL'dir.");
}

void ucgenAlanHesapla({double yukseklik, double tabanUzunlugu}) {
  double sonuc = yukseklik * tabanUzunlugu / 2;
  print("$yukseklik cm yüksekliğe ve $tabanUzunlugu taban uzunluğuna sahip bir üçgenin alanı $sonuc cm²'dir.");
}

void universiteGectiMi({double vizeNotu, finalNotu}) {
  var sonuc = (vizeNotu / 100 * 30) + (finalNotu / 100 * 70);
  if(sonuc >= 50 && finalNotu >= 50) print("Tebrikler $sonuc puan ile geçtiniz!");
  else if(sonuc >= 50 && finalNotu < 50) print("Üzgünüm, $sonuc puan ile final notunuz $finalNotu puan olduğu için kaldınız!");
  else print("Üzgünüm, $sonuc puan ile kaldınız!");
}

void ucBesinKatiMi(int sayi) {
  if(sayi % 3 == 0 && sayi % 5 == 0) print("$sayi hem 3'e hem de 5'e bölünüyor!");
  else print("$sayi, 3 ile 5'e birlikte tam bölünmüyor!");
}

void araliktaMi(int sayi) {
  if(sayi > 0 && sayi < 100) print("$sayi 0-100 aralığında!");
  else print("$sayi 0-100 aralığında değil!");
}

void suHali(double sayi) {
  if(sayi > 0 && sayi < 100) print("Su şu an sıvı!");
  else if(sayi <= 0) print("Su şu an buz!");
  else print("Su şu an gaz!");
}
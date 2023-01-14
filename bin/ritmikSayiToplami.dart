/*
* 1'den başlayıp belirtilen sayıya kadar
* bir önceki sayıların toplamına o anki
* sayıyı ekleyerek devam eden kod yapısı
* */

void sumOfNumbers(int limit) {
  int number = 0;
  for (var i = 1; i <= limit; i++) {
    number += i;
    print("$i. sayı olan $number sayısını hesaplamak için ${number - i} + $i işlemi yapılmıştır.");
  }
}
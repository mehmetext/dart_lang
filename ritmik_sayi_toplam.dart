/*
* 1'den başlayıp belirtilen sayıya kadar
* bir önceki sayıların toplamına o anki
* sayıyı ekleyerek devam eden kod yapısı
* */

void main() {
  sumOfNumbers(8);
}

void sumOfNumbers(int limit) {
  List<int> allNumbers = [];
  int allSum = 0;
  int number = 0;
 
  for (var i = 1; i <= limit; i++) {
    number += i;
    print("$i. sayı olan $number sayısını hesaplamak için ${number - i}+$i işlemi yapılmıştır.");
    allNumbers.add(number);
  }
 
  allNumbers.forEach((currentNumber) => allSum += currentNumber);
  print("Bulunan sayıların toplamı: $allSum");
  String text = "";
  text += "$allSum sayısını hesaplamak için ${allNumbers[0]}";
 
  for(var i = 1; i < allNumbers.length; i++) {
    text += "+${allNumbers[i]}";
  }
 
  text += " işlemi yapılmıştır.";
 
  print(text);
}

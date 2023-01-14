import 'dart:math';

int createCustomPassword() {
  int num1 = randomNum(notZero: true);
  int num2 = randomNum();
  int num3 = randomNum();
  int num4 = randomNum();
  int num5 = randomNum();
  int num6 = (num1 + num2 - num3 + num4 * num5) % 10;
  int createdPassword = int.parse("$num1$num2$num3$num4$num5$num6");
  print("Oluşturulan özel algoritmalı şifre: $createdPassword");
  return createdPassword;
}

void isCustomPassword(int password) {
  int num1 = password % 1000000 ~/ 100000;
  int num2 = password % 100000 ~/ 10000;
  int num3 = password % 10000 ~/ 1000;
  int num4 = password % 1000 ~/ 100;
  int num5 = password % 100 ~/ 10;
  int num6 = password % 10;

  print("Çözümlenecek şifre: $password");
  if (num6 == (num1 + num2 - num3 + num4 * num5) % 10)
    print("Girilen şifre özel algoritmalı şifredir!");
  else
    print("Girilen şifre özel algoritmalı şifre değildir!");
}

int randomNum({bool notZero = false}) {
  int randomNumber = Random().nextInt(10);
  if (notZero) {
    if (randomNumber == 0) {
      return randomNum(notZero: true);
    } else
      return randomNumber;
  } else
    return randomNumber;
}

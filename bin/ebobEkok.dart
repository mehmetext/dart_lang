void ebobEkok(int sayi1, int sayi2) {
  int ebob = 0;
  int ekok = 0;

  for (int i = 1; i <= sayi1 && i <= sayi2; i++) {
    if (sayi1 % i == 0 && sayi2 % i == 0) {
      ebob = i;
    }
  }

  /*
  ebob(sayi1, sayi2) * ekok(sayi1, sayi2) = sayi1 * sayi2
  formülünü kullanarak EKOK'u bulabiliriz..
  */
  ekok = (sayi1 * sayi2) ~/ ebob;

  print("$sayi1 ve $sayi2 sayılarının EBOB'u $ebob sayısıdır.");
  print("$sayi1 ve $sayi2 sayılarının EKOK'u $ekok sayısıdır.");
}

void main() {
  ucgen(10);
}

void ucgen(int sayi) {
  String simge = "♥";
  for (int i = 1; i <= sayi; i++) {
    String str = "";
    for (int a = 0; a < (sayi - i); a++) {
      str += " ";
    }
    str += "$simge";
    for (int b = 1; b < i; b++) {
      str += " $simge";
    }
    print("$str");
  }
}

/* //Sayı ile
void ucgen(int sayi) {
  for (int i = 1; i <= sayi; i++) {
    String str = "";
    for (int a = 0; a < (sayi - i); a++) {
      str += " ";
    }
    str += "$i";
    for (int b = 1; b < i; b++) {
      str += " $i";
    }
    print("$str");
  }
}
*/

/* //Sayı iki basamaklı ise
void main() {
  ucgen(12);
}

void ucgen(int sayi) {
  for (int i = 1; i <= sayi; i++) {
    String str = "";
    for (int a = 0; a < (sayi - i); a++) {
      if (sayi >= 10) {
        if (i >= 10) {
          str += "  ";
        } else {
          str += "  ";
        }
      } else
        str += " ";
    }
    str += "$i";
    for (int b = 1; b < i; b++) {
      if (sayi >= 10) {
        if (i >= 10) {
          str += "  $i";
        } else {
          str += "   $i";
        }
      } else
        str += " $i";
    }
    print("$str");
  }
}
*/

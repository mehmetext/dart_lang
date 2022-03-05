void main() {
  print(zamanFormat(DateTime.now().subtract(Duration(seconds: 1))));
  print(zamanFormat(DateTime.now().subtract(Duration(seconds: 53))));
  print(zamanFormat(DateTime.now().subtract(Duration(minutes: 1))));
  print(zamanFormat(DateTime.now().subtract(Duration(minutes: 37))));
  print(zamanFormat(DateTime.now().subtract(Duration(hours: 1))));
  print(zamanFormat(DateTime.now().subtract(Duration(hours: 17))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 1))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 2))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 3))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 4))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 5))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 6))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 7))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 14))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 29))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 30))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 63))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 128))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 365))));
  print(zamanFormat(DateTime.now().subtract(Duration(days: 1058))));
}

String zamanFormat(DateTime zaman) {
  int msSaniye = 1 * 1000;
  int msDakika = msSaniye * 60;
  int msSaat = msDakika * 60;
  int msGun = msSaat * 24;
  int msHafta = msGun * 7;
  int msAy = msGun * 30;
  int msYil = msGun * 365;
  int fark =
      DateTime.now().millisecondsSinceEpoch - zaman.millisecondsSinceEpoch;
  int haftaGunu = zaman.weekday;

  if (fark <= msSaniye * 3) {
    return "Az önce";
  } else if (fark < msDakika) {
    return "${(fark / msSaniye).round()} saniye önce";
  } else if (fark <= msDakika * 3) {
    return "Birkaç dakika önce";
  } else if (fark < msSaat) {
    return "${(fark / msDakika).round()} dakika önce";
  } else if (fark <= msSaat * 3) {
    return "Birkaç saat önce";
  } else if (fark < msGun) {
    return "${(fark / msSaat).round()} saat önce";
  } else if (fark < msGun * 2) {
    return "Dün";
  } else if (fark < msGun * 3) {
    return "Evvelsi gün";
  } else if (fark < msGun * 4) {
    return "Geçen ${gunFormat(haftaGunu)}";
  } else if (fark < msGun * 5) {
    return "Geçen ${gunFormat(haftaGunu)}";
  } else if (fark < msGun * 6) {
    return "Geçen ${gunFormat(haftaGunu)}";
  } else if (fark < msGun * 7) {
    return "Geçen ${gunFormat(haftaGunu)}";
  } else if (fark < msHafta * 2) {
    return "Geçen hafta";
  } else if (fark < msAy) {
    return "${(fark / msHafta).round()} hafta önce";
  } else if (fark < msAy * 2) {
    return "Geçen ay";
  } else if (fark < msYil) {
    return "${(fark / msAy).round()} ay önce";
  } else if (fark < msYil * 2) {
    return "Geçen yıl";
  } else {
    return "${(fark / msYil).round()} yıl önce";
  }
}

String gunFormat(int gun) {
  switch (gun) {
    case 1:
      return "Pazartesi";
    case 2:
      return "Salı";
    case 3:
      return "Çarşamba";
    case 4:
      return "Perşembe";
    case 5:
      return "Cuma";
    case 6:
      return "Cumartesi";
    case 7:
      return "Pazar";
    default:
      return "geçersiz kod";
  }
}

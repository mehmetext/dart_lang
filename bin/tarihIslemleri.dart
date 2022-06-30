void tarih(DateTime tarih) {
  String ay;
  String gun;

  switch (tarih.month) {
    case 1:
      ay = "Ocak";
      break;
    case 2:
      ay = "Şubat";
      break;
    case 3:
      ay = "Mart";
      break;
    case 4:
      ay = "Nisan";
      break;
    case 5:
      ay = "Mayıs";
      break;
    case 6:
      ay = "Haziran";
      break;
    case 7:
      ay = "Temmuz";
      break;
    case 8:
      ay = "Ağustos";
      break;
    case 9:
      ay = "Eylül";
      break;
    case 10:
      ay = "Ekim";
      break;
    case 11:
      ay = "Kasım";
      break;
    case 12:
      ay = "Aralık";
      break;
    default:
  }

  switch (tarih.weekday) {
    case 1:
      gun = "Pazartesi";
      break;
    case 2:
      gun = "Salı";
      break;
    case 3:
      gun = "Çarşamba";
      break;
    case 4:
      gun = "Perşembe";
      break;
    case 5:
      gun = "Cuma";
      break;
    case 6:
      gun = "Cumartesi";
      break;
    case 7:
      gun = "Pazar";
      break;
    default:
  }

  print(
      "${tarih.day} $ay ${tarih.year} $gun - ${tarih.hour < 10 ? 0.toString() + tarih.hour.toString() : tarih.hour}:${tarih.minute < 10 ? 0.toString() + tarih.minute.toString() : tarih.minute}:${tarih.second < 10 ? 0.toString() + tarih.second.toString() : tarih.second}");
}

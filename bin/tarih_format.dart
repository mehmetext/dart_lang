/* import 'dart:math';

var random = Random(DateTime.now().millisecondsSinceEpoch);

DateTime mockDate([DateTime firstMoment, DateTime secondMoment]) {
  firstMoment ??= DateTime.fromMillisecondsSinceEpoch(0);
  secondMoment ??= DateTime.now();

  secondMoment.isBefore(firstMoment)
      ? throw ArgumentError('Second DateTime '
          'moment should be after first DateTime moment.')
      : null;

  Duration difference = secondMoment.difference(firstMoment);

  return firstMoment
      .add(Duration(seconds: random.nextInt(difference.inSeconds + 1)));
} */

String gecenZamanFormat(DateTime zaman, {bool kisa = false}) {
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

  if (kisa) {
    if (fark <= msSaniye * 3) {
      return "şimdi";
    } else if (fark < msDakika) {
      return "${(fark / msSaniye).round()} sn";
    } else if (fark < msSaat) {
      return "${(fark / msDakika).round()} dk";
    } else if (fark < msGun) {
      return "${(fark / msSaat).round()} sa";
    } else if (fark < msAy) {
      return "${(fark / msGun).round()} gün";
    } else if (fark < msYil) {
      return "${(fark / msAy).round()} ay";
    } else {
      return "${(fark / msYil).round()} yıl";
    }
  } else {
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

String tarihFormat(DateTime zaman) {
  return "${zaman.hour < 10 ? 0.toString() + zaman.hour.toString() : zaman.hour}:${zaman.minute < 10 ? 0.toString() + zaman.minute.toString() : zaman.minute} - ${zaman.day} ${getMonth(zaman.month)} ${zaman.year} ${gunFormat(zaman.weekday)}";
}

String dateFormat(DateTime date) {
  return "${date.day} ${getMonth(date.month)} ${date.year}";
}

String getMonth(int no) {
  String month;
  switch (no) {
    case 1:
      month = "Ocak";
      break;
    case 2:
      month = "Şubat";
      break;
    case 3:
      month = "Mart";
      break;
    case 4:
      month = "Nisan";
      break;
    case 5:
      month = "Mayıs";
      break;
    case 6:
      month = "Haziran";
      break;
    case 7:
      month = "Temmuz";
      break;
    case 8:
      month = "Ağustos";
      break;
    case 9:
      month = "Eylül";
      break;
    case 10:
      month = "Ekim";
      break;
    case 11:
      month = "Kasım";
      break;
    case 12:
      month = "Aralık";
      break;
    default:
  }
  return month;
}

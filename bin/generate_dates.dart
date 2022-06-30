import 'dart:math';

void generateDatesMainFunc() {
  List<DateTime> dates = generateDates(
    count: 5,
  );

  for (DateTime date in dates) {
    print("${hourMinuteFormat(date)} ${tarihFormat(date)} ${dayFormat(date)}");
  }
}

List<DateTime> generateDates(
    {bool reverse = true, int count = 2, DateTime startWith}) {
  List<DateTime> dates = [];

  for (int i = 0; i < count; i++) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(
      randomNumber(
        min: (i == 0
            ? (startWith != null ? startWith.millisecondsSinceEpoch : 0)
            : dates[i - 1].millisecondsSinceEpoch),
      ),
    );
    dates.add(date);
  }

  return reverse ? dates : dates.reversed.toList();
}

int randomNumber({int min = 0, int max = 0}) {
  Random random = Random();

  DateTime now = DateTime.now();

  int seconds = (max > 0 ? max : now.millisecondsSinceEpoch) ~/ 1000;
  int minInS = min ~/ 1000;
  int randomN = minInS + random.nextInt(seconds - minInS);
  int randomInMS = randomN * 1000;
  return randomInMS;
}

String hourMinuteFormat(DateTime datetime) {
  String hour = "${datetime.hour < 10 ? "0${datetime.hour}" : datetime.hour}";
  String minute =
      "${datetime.minute < 10 ? "0${datetime.minute}" : datetime.minute}";

  return "$hour:$minute";
}

String tarihFormat(DateTime zaman) {
  String ay;

  switch (zaman.month) {
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
      ay = "";
      break;
  }

  return "${zaman.day} $ay ${zaman.year}";
}

String dayFormat(DateTime datetime) {
  switch (datetime.weekday) {
    case 1:
      return "PAZARTESİ";
    case 2:
      return "SALI";
    case 3:
      return "ÇARŞAMBA";
    case 4:
      return "PERŞEMBE";
    case 5:
      return "CUMA";
    case 6:
      return "CUMARTESİ";
    case 7:
      return "PAZAR";
    default:
      return "GEÇERSİZ GÜN";
  }
}

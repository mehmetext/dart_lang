void howManyTimesMainFunc() {
  print(howManyTimes(DateTime(1453)));
  print(howManyTimes(DateTime(571)));
  print(howManyTimes(DateTime(2006, 4, 6)));
  print(howManyTimes(DateTime(2000), date2: DateTime(1990)));
}

String howManyTimes(DateTime date, {DateTime date2}) {
  int second = 1000,
      minute = second * 60,
      hour = minute * 60,
      day = hour * 24,
      week = day * 7,
      month = day * 30,
      year = day * 365;
  List<String> strList = [];
  String str = '';

  if (date2 == null) date2 = DateTime.now();
  int difference = date2.difference(date).inMilliseconds;

  if (difference < 0) difference *= -1;

  int yearCount = (difference ~/ year),
      monthCount = (difference % year) ~/ month,
      weekCount = (difference % month) ~/ week,
      dayCount = (difference % week) ~/ day,
      hourCount = (difference % day) ~/ hour,
      minuteCount = (difference % hour) ~/ minute,
      secondCount = (difference % minute) ~/ second;

  if (yearCount != 0) strList.add('$yearCount yıl');
  if (monthCount != 0) strList.add('$monthCount ay');
  if (weekCount != 0) strList.add('$weekCount hafta');
  if (dayCount != 0) strList.add('$dayCount gün');
  if (hourCount != 0) strList.add('$hourCount saat');
  if (minuteCount != 0) strList.add('$minuteCount dakika');
  if (secondCount != 0) strList.add('$secondCount saniye');

  for (int i = 0; i < strList.length; i++) {
    if (i < (strList.length - 1)) {
      str += '${strList[i]} ';
    } else {
      str += '${strList[i]}';
    }
  }

  return str;
}

import 'dart:math';

void numberFormatTwitterMainFunc() {
  print(numberFormatTwitter(0));
  print(numberFormatTwitter(1));
  print(numberFormatTwitter(12));
  print(numberFormatTwitter(123));
  print(numberFormatTwitter(500));
  print(numberFormatTwitter(1000));
  print(numberFormatTwitter(5423));
  print(numberFormatTwitter(50000));
  print(numberFormatTwitter(56489));
  print(numberFormatTwitter(200000));
  print(numberFormatTwitter(234895));
  print(numberFormatTwitter(4000000));
  print(numberFormatTwitter(4321543));
  print(numberFormatTwitter(500000000));
  print(numberFormatTwitter(533248422));
  print(numberFormatTwitter(90000000000));
  print(numberFormatTwitter(93875642318));
  print(numberFormatTwitter(938756423188));
  print(numberFormatTwitter(194975465432454));
}

String numberFormatTwitter(int number) {
  int digitCount = '$number'.length;
  int multipleOfThree = digitCount ~/ 3;
  int remainderOfDivisionByThree = digitCount % 3;

  Map<String, dynamic> digitMap =
      getDigitMap(multipleOfThree, remainderOfDivisionByThree);

  String strNum = doubleToString(number / pow(1000, digitMap['pow']));

  String formatted = '$strNum';

  if (number >= 1000) {
    formatted += ' ${digitMap['name']}';
    formatted = formatted.replaceAll('.', ',');
  }

  return formatted;
}

String doubleToString(double number) {
  if (number % 1 == 0) {
    return number.toInt().toString();
  } else {
    return double.parse(number.toStringAsFixed(2)).toString();
  }
}

Map<String, dynamic> getDigitMap(
    int multipleOfThree, int remainderOfDivisionByThree) {
  String codeStr = '$multipleOfThree-$remainderOfDivisionByThree';
  Map<String, dynamic> digitMap = {};

  switch (codeStr) {
    case '0-1':
    case '0-2':
    case '1-0':
      digitMap['name'] = '';
      digitMap['pow'] = 0;
      break;
    case '1-1':
    case '1-2':
    case '2-0':
      digitMap['name'] = 'B';
      digitMap['pow'] = 1;
      break;
    case '2-1':
    case '2-2':
    case '3-0':
      digitMap['name'] = 'Mn';
      digitMap['pow'] = 2;
      break;
    case '3-1':
    case '3-2':
    case '4-0':
      digitMap['name'] = 'Mr';
      digitMap['pow'] = 3;
      break;
    default:
      digitMap['name'] = 'sen milyon milyar';
      digitMap['pow'] = 0;
      break;
  }

  return digitMap;
}

//ÇIKTILAR:
// 50 B
// 56,49 B
// 200 B
// 234,9 B
// 4 Mn
// 4,32 Mn
// 500 Mn
// 533,25 Mn
// 90 Mr
// 93,88 Mr
// 938,76 Mr
// 194975465432454 sen milyon milyar

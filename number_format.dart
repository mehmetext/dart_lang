void main() {
  print(numberFormat(56484568));
  print(numberFormat(1453));
  print(numberFormat(564.1123122));
  print(numberFormat(564.1123122, fractionDigits: 3));
  print(numberFormat(5649732456.65428, fractionDigits: 2));
}

String numberFormat(
  double number, {
  int fractionDigits,
}) {
  double oldNumber = number;
  if (fractionDigits != null) {
    number = double.parse(number.toStringAsFixed(fractionDigits));
  }

  String formattedNumber = '';
  List<String> parsed = "$number".split('.').toList();
  String reversedNumber = parsed[0].split('').reversed.join();
  List<String> digits = [];

  for (int i = 0; i < reversedNumber.length; i += 3) {
    String currentNumber = '';
    if (i + 3 > reversedNumber.length) {
      currentNumber = reversedNumber.substring(i, reversedNumber.length);
    } else {
      currentNumber = reversedNumber.substring(i, i + 3);
    }
    digits.add(currentNumber);
  }

  String digitsString = '';
  for (int i = 0; i < digits.length; i++) {
    if (i < digits.length - 1) {
      digitsString += '${digits[i]}.';
    } else {
      digitsString += '${digits[i]}';
    }
  }

  formattedNumber += digitsString.split('').reversed.join();

  if (parsed[1] != '0') {
    formattedNumber += ',${parsed[1]}';
  }

  return '$oldNumber sayısının formatlanmış hali: $formattedNumber';
}

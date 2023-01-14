void main() {
  simplify([8, 44, 124]);
}

List<int> simplify(List<int> numbers) {
  int ebob = getEbob(numbers);
  String enteredNumbers = "Entered numbers: ${numbers[0]}";
  List<int> nums = [];

  for (int i = 1; i < numbers.length; i++) {
    enteredNumbers += ", ${numbers[i]}";
  }

  print(enteredNumbers);
  print("EBOB = $ebob");

  for (int i = 0; i < numbers.length; i++) {
    int newNumber = numbers[i] ~/ ebob;
    print("Before: ${numbers[i]} -- After: $newNumber");
    nums.add(newNumber);
  }

  return nums;
}

int getEbob(List<int> numbers) {
  int greatestNumber = numbers.reduce((a, b) => a > b ? a : b);
  int ebob = 1;

  for (int i = 1; i <= greatestNumber; i++) {
    bool all = true;
    for (int j = 0; j < numbers.length; j++) {
      if (numbers[j] % i != 0) {
        all = false;
      }
    }
    if (all) ebob = i;
  }

  return ebob;
}

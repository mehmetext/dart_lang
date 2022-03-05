void main() {
  hicridenMiladiye(1430);
  miladidenHicriye(2009);
}

void hicridenMiladiye(int hicriYil) {
  int miladiYil =
      hicriYil - int.parse((hicriYil / 33).toStringAsFixed(0)) + 622;
  print("$hicriYil hicri yılı, $miladiYil miladi yılına eşittir.");
}

void miladidenHicriye(int miladiYil) {
  int hicriYil = int.parse(((miladiYil - 621) / 33).toStringAsFixed(0)) +
      (miladiYil - 621);
  print("$miladiYil miladi yılı, $hicriYil hicri yılına eşittir.");
}

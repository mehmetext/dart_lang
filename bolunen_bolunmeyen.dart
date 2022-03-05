void main() {
  bolunenBolunmeyen(
    bolunen: [2, 5],
    bolunmeyen: [30],
    // max: 100,
  );
}

void bolunenBolunmeyen({
  List<int> bolunen,
  List<int> bolunmeyen,
  int max = 1000,
}) {
  List<int> bolunenBolunmeyen = [];
  List<int> bolunenBolunen = [];

  for (int i = 1; i <= max; i++) {
    bool bolunurBolunmez = true;
    bool bolunurBolunur = false;

    for (int j = 0; j < bolunen.length; j++) {
      if (i % bolunen[j] != 0) {
        bolunurBolunmez = false;
      }
    }

    if (bolunurBolunmez) {
      for (int j = 0; j < bolunmeyen.length; j++) {
        if (i % bolunmeyen[j] == 0) {
          bolunurBolunmez = false;
          bolunurBolunur = true;
        }
      }
    }

    if (bolunurBolunmez)
      bolunenBolunmeyen.add(i);
    else if (bolunurBolunur) bolunenBolunen.add(i);
  }

  String bolunurBolunmezStr = "${bolunen.first}";
  String bolunurBolunurStr = "Hepsine bölünenler: ${bolunmeyen.first}";

  for (int i = 1; i < bolunen.length; i++) {
    bolunurBolunmezStr += ", ${bolunen[i]}";
  }

  bolunurBolunmezStr += " sayılarına bölünen ve ${bolunmeyen.first}";

  for (int i = 1; i < bolunmeyen.length; i++) {
    bolunurBolunmezStr += ", ${bolunmeyen[i]}";
  }

  bolunurBolunmezStr += " sayılarına bölünmeyenler: ${bolunenBolunmeyen.first}";

  for (int i = 1; i < bolunenBolunmeyen.length; i++) {
    bolunurBolunmezStr += ", ${bolunenBolunmeyen[i]}";
  }

  for (int i = 1; i < bolunenBolunen.length; i++) {
    bolunurBolunurStr += ", ${bolunenBolunen[i]}";
  }

  print("$bolunurBolunmezStr");
  print("$bolunurBolunurStr");
}

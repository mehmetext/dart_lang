void main() {
  Map<String, dynamic> map = {
    "string_deger": "Deneme string",
    "int_deger": 1235,
    "double_deger": 126.84,
    "bool_deger": true,
    "Map_Deger": {
      "Map_Deger_1": "Map Değer 1",
      "Map_Deger_2": {
        "Map_Deger_2_1": "Map Değer 2_1",
      },
    },
    "List_deger": {
      "key": "List_Item",
      "items": List.generate(
        5,
        (index) => {
          "List_Item_Id": index,
          "List_Item_Str": "List Item String $index",
        },
      ),
    },
  };

  map = {
    "cevap": {
      "CevapID": 0,
      "UretimID": "5649813",
      "FormID": "FORMID_123123",
      "RevizeID": "REVIZEID_ASLKNDLKS",
      "SaatPlanlanan": null,
      "SaatGerceklesen": DateTime.now().toIso8601String(),
      "PersonelID": "PERSONELID_1ASD84AS9",
      "GenelAciklama": "Genel Açıklama falan filan",
    },
    "cevapKriters": {
      "key": "KK_CevapKriter",
      "items": List.generate(
        3,
        (i) => {
          "KriterCevapID": 0,
          "CevapID": 0,
          "KriterID": i,
          "Cevap": "U",
          "Aciklama": "Kriter Açıklaması $i",
        },
      ),
    },
  };

  String xmlFromMap = mapToXml(map, spaceString: "  ");

  print(xmlFromMap);
}

String mapToXml(
  Map<String, dynamic> map, {
  int space: 0,
  String spaceString = " ",
}) {
  String xml = "";

  map.forEach((key, value) {
    String addingXml = (spaceString * space);

    if (map[key] is Map && map[key]["key"] != null) {
      String addingListToXml = xmlTag(key, newLine: true);

      for (Map<String, dynamic> mapItemInList in map[key]["items"]) {
        addingListToXml += xmlTag(
          map[key]['key'],
          space: spaceString * (space + 1),
          newLine: true,
        );

        addingListToXml += mapToXml(
          mapItemInList,
          space: space + 2,
          spaceString: spaceString,
        );

        addingListToXml += xmlTag(
          map[key]['key'],
          space: spaceString * (space + 1),
          isEnd: true,
        );
      }

      addingListToXml += xmlTag(
        key,
        space: (spaceString * space),
        isEnd: true,
      );

      addingXml += addingListToXml;
    } else if (map[key] is Map) {
      String addingMapToXml = xmlTag(key, newLine: true);

      addingMapToXml += mapToXml(
        map[key] as Map<String, dynamic>,
        space: space + 1,
        spaceString: spaceString,
      );

      addingMapToXml += xmlTag(key, space: (spaceString * space), isEnd: true);
      addingXml += addingMapToXml;
    } else {
      if (value != null) {
        addingXml += xmlTag(key) + "$value" + xmlTag(key, isEnd: true);
      } else {
        addingXml += "<$key />" + "\n";
      }
    }

    xml += addingXml;
  });

  return xml;
}

String xmlTag(String key, {String space: "", isEnd = false, newLine = false}) {
  return space + "<${isEnd ? "/" : ""}$key>" + (isEnd || newLine ? "\n" : "");
}

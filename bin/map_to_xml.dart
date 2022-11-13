void main() {
  Map<String, dynamic> map = {
    "string_deger": "Deneme string",
    "int_deger": 1235,
    "double_deger": 126.84,
    "bool_deger": true,
    "null_deger": null,
    "Map_Deger": {
      "Map_Deger_1": "Map Değer 1",
      "Map_Deger_2": {
        "Map_Deger_2_1": "Map Değer 2_1",
      },
    },
    "List_deger<List_Item>": List.generate(
      5,
      (index) => {
        "List_Item_Id": index,
        "List_Item_Str": "List Item String $index",
      },
    ),
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

    if (map[key] is List) {
      RegExp itemKeyRegExp = RegExp(r'<(\w+)>');
      String itemKey = itemKeyRegExp.firstMatch(key).group(1);
      String listKey = key.replaceAll(itemKeyRegExp, "");

      String addingListToXml = xmlTag(listKey, newLine: true);

      for (int i = 0; i < map[key].length; i++) {
        addingListToXml += xmlTag(
          itemKey,
          space: spaceString * (space + 1),
          newLine: true,
        );

        addingListToXml += mapToXml(
          map[key][i],
          space: space + 2,
          spaceString: spaceString,
        );

        addingListToXml += xmlTag(
          itemKey,
          space: spaceString * (space + 1),
          isEnd: true,
        );
      }

      addingListToXml += xmlTag(
        listKey,
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

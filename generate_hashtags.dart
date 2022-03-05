import 'dart:math';

//generalTags
//dartFlutterTags
//algorythmTags
//motivationTags

void main() {
  /* generateHashtags(
      text:
          "Visual Studio Code'da en çok kullanılan 5 temayı sıraladım. Siz hangi temayı kullanıyorsunuz?",
      tags: generalTags); */
  // generateDartQuestion();
  // generateMotivation('!');
  // generateWordSearch();
  // generateDartFlutter(
  //     "Flutter'da Box Decoration nedir? Nasıl kullanılır? öğrenelim.");
  // generateAlgorythm();
  generateHashtags(
      text:
          "Daha öncesinde Dart kullanarak basit işlevli açıklama oluşturucu yazmıştım ama şimdi JavaScript + HTML + CSS kullanarak daha çok işlevli halini yazıyorum, bunun sayesinde artık telefondan da açıklama oluşturabilirim :P",
      tags: [...generalTags, "javascript"]);
}

List<String> generalTags = [
  'bilgisayar',
  'bikodist',
  'flutter',
  'dartlang',
  'yazılım',
  'yazılımcı',
  'kodlama',
  'kod',
  'mühendis',
  'yazılımmühendisliği',
  'bilgisayarmühendisliği',
  'coder',
  'developer',
  'mobilprogramlama',
  'geliştirici',
];

List<String> dartFlutterTags = [
  'mobil',
  'bikodist',
  'dartlang',
  'flutter',
  'android',
  'ios',
  'crossplatform',
  'yazılımcı',
  'developer',
  'kodlama',
  'programlama',
  'mobilprogramlama',
  'mobileprogramming',
  'gelistirici',
  'geliştirici',
];

List<String> algorythmTags = [
  'bikodist',
  'algoritma',
  'algorythm',
  'yazılımcı',
  'yazilimci',
  'yazılım',
  'programlama',
  'kodlama',
  'kod',
  'yazılımmühendisliği',
  'bilgisayarmühendisliği',
  'developer',
  'geliştirici',
];

List<String> motivationTags = [
  'bilgisayar',
  'bikodist',
  'yazilim',
  'coder',
  'yazılım',
  'developer',
  'gelistirici',
  'geliştirici',
  'motivasyon',
  'programlama',
  'mobilprogramlama',
  'basari',
  'başarı',
];

void generateDartQuestion() {
  generateHashtags(
    text: "Bilme sırası sende. Hadi bil bakalım, doğru cevap hangisi? ⭐",
    tags: dartFlutterTags,
  );
}

void generateMotivation(String text) {
  generateHashtags(
    text: text,
    tags: motivationTags,
  );
}

void generateWordSearch() {
  generateHashtags(
    text:
        'Yazılım terimleriyle oluşturulmuş kelime bulmacada 5 kelime bulunuyor. Kelimeleri yorumlara "," ile ayırarak yazabilirsiniz.',
    tags: generalTags,
  );
}

void generateDartFlutter(String text) {
  generateHashtags(
    text: text,
    tags: dartFlutterTags,
  );
}

void generateAlgorythm() {
  generateHashtags(
    text:
        'Algoritma sorusunun cevabını bulabilecek misin? Kendine güveniyorsan seni yorumlara alalım!',
    tags: algorythmTags,
  );
}

void generateHashtags({
  String text,
  List<String> tags,
}) {
  List<String> newTags = [];

  Random random = Random();

  int length = tags.length;

  for (int i = 0; i < length; i++) {
    int index = random.nextInt(tags.length);
    newTags.add(tags[index]);
    tags.removeAt(index);
  }

  print(text);

  printCircle(1);

  print(
      'Daha fazla bu tarz içerik için gönderiyi beğenebilir, içerik hakkında fikrinizi belirtmek için yorum yapabilir, daha sonra işine yarayacağı için gönderiyi kaydedebilir ve gönderilerden haberdar olmak için sayfayı takip edebilirsin 🧡');
  print('');
  print(
      'Ayrıca paylaşımlarımdan ilk sen haberdar olmak istiyorsan gönderi bildirimlerini açmayı unutma. Sayfayı takip ettikten sonra sağ üst köşede bulunan zil butonuna basman yeterli 💫');

  printCircle(1);

  print("""👉 Algoritmalar ve çözümleri
👉 Dart (Programlama Dili) dersleri
👉 Flutter (Mobil Programlama) dersleri, örnekleri ve kodları
👉 Programlama dillerindeki fonksiyonların mantığı
👉 Yazılımdaki ilerlemem ve gelişimim
👉 Sizlerden gelen sorular hakkında tartışmalar ve görseller
👉 Motivasyon ve başarı hikayeleri
⭐ Ve daha fazlası için sayfayı takip etmeyi unutmayın!""");

  printCircle(1);

  String tagString = '';
  for (int i = 0; i < newTags.length; i++) {
    if (i < (newTags.length - 1)) {
      tagString += '#${newTags[i]}, ';
    } else {
      tagString += '#${newTags[i]}';
    }
  }
  print('$tagString');
}

void printCircle(int count) {
  print('');
  for (int i = 1; i <= count; i++) print('•  •  •  •  •  •  •');
  print('');
}

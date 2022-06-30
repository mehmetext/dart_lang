import 'dart:math';

List<Soz> sozler = [
  Soz("Üşümek varsa bu sıcağın yokluğudur, karanlık varsa ışığın yokluğu. Eğer her yer karanlık ve sen üşüyorsan işte bu o’nun yokluğu.",
      "Aziz Nesin"),
  Soz("Bir şey kötü ifade edildi diye mutlaka yanlış değildir, mükemmel söylendi diye mutlaka doğru değildir.",
      "Aurelius Augustinius"),
  Soz("Hayat fırtına demek değil, fırtınanın altında dans öğrenmektir.",
      "Taylor Swift"),
  Soz("Ağaç hiçbir zaman çiçeğini bırakıp gitmez; ağacı bırakıp giden her zaman çiçektir.",
      "Alexandre Dumas"),
  Soz("Zamanlarının büyük bir kısmını para kazanmak ve saklamakla geçiren insanlar, sonunda en çok istediklerinin satın alınamayacak şeyler olduğunu anlarlar.",
      "Aldous Huxley"),
  Soz("İki insanın iyi geçinmesi hiç kusursuz olmalarıyla değil, birbirlerinin kusurlarını hoş görmeleriyle sağlanır.",
      "Alexis de Tocqueville"),
];

void rastgeleSozGetir() {
  int sayi = Random().nextInt(sozler.length);
  Soz secilmisSoz = sozler[sayi];
  print(secilmisSoz.soz);
  print("-${secilmisSoz.sozSahibi}");
}

class Soz {
  String soz;
  String sozSahibi;

  Soz(this.soz, this.sozSahibi);
}

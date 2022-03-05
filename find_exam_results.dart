class StudentExamModel {
  String name;
  double score;

  StudentExamModel({
    this.name,
    this.score,
  });
}

void main() {
  findExamResults([
    StudentExamModel(
      name: 'Pusat',
      score: 98,
    ),
    StudentExamModel(
      name: 'Ahmet',
      score: 66,
    ),
    StudentExamModel(
      name: 'Veli',
      score: 58,
    ),
    StudentExamModel(
      name: 'Emre',
      score: 78,
    ),
    StudentExamModel(
      name: 'Enes',
      score: 70,
    ),
    StudentExamModel(
      name: 'Umut',
      score: 83,
    ),
  ]);
}

void findExamResults(List<StudentExamModel> studentExams) {
  double totalScore = 0, averageScore = 0;
  StudentExamModel champ = studentExams.first;

  for (int i = 0; i < studentExams.length; i++) {
    StudentExamModel currentSE = studentExams[i];
    totalScore += currentSE.score;
    if (champ.score < currentSE.score) {
      champ = currentSE;
    }
  }
  averageScore = totalScore / studentExams.length;

  print("Toplam puan: $totalScore, Ortalama: $averageScore");

  for (StudentExamModel studentExam in studentExams) {
    print('**** Öğrenci: ${studentExam.name} ****');
    if (studentExam.score < averageScore) {
      print('>> × BAŞARISIZ');
      print('>> Aldığı puan: ${studentExam.score}');
      print(
          '>> Ortalama puanı ne kadar kaçırdı: ${(averageScore - studentExam.score).toStringAsFixed(2)}');
    } else {
      print('>> ✓ BAŞARILI');
      print('>> Aldığı puan: ${studentExam.score}');
      print(
          '>> Ortalama puanı ne kadar geçti: ${(studentExam.score - averageScore).toStringAsFixed(2)}');
    }
    print('');
  }

  print('**** Şampiyon: ${champ.name} ****');
}

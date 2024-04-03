import 'package:quizzscreen/model/quisten_model.dart';

const questions = [
  QuestionModel(
    "Aşağıdakilerden hangisi bir widget türüdür?",
    ["Stateful", "Constructor", "Class", "Const", "Deneme"],
    "Class",
  ),
  QuestionModel(
    "Flutter'da widget'lar nasıl yapılandırılır?",
    ["Stateful", "Constructor", "Class", "Const", "Deneme"],
    "Class",
  ),
  QuestionModel(
    "Flutter'da Stateful widget ile Stateless widget arasındaki fark nedir?",
    [
      "Stateful widget, durum (state) tutabilir, ancak Stateless widget tutamaz.",
      "Stateful widget, kullanıcı etkileşimine yanıt verebilir, ancak Stateless widget yanıt veremez.",
      "Stateful widget, durum değişikliklerini takip edemez, ancak Stateless widget takip edebilir.",
      "Stateful widget, içeriklerini değiştiremez, ancak Stateless widget değiştirebilir."
    ],
    "Stateful widget, durum (state) tutabilir, ancak Stateless widget tutamaz.",
  ),
  QuestionModel(
    "Flutter'da hot reload özelliği ne işe yarar?",
    [
      "Uygulamayı tamamen yeniden başlatır.",
      "Yapılan değişiklikleri anlık olarak uygulamaya yansıtır.",
      "Uygulamanın performansını arttırır.",
      "Hata ayıklama sürecini hızlandırır."
    ],
    "Yapılan değişiklikleri anlık olarak uygulamaya yansıtır.",
  ),
  QuestionModel(
    "Flutter'da kullanıcı arayüzü oluştururken hangi dil kullanılır?",
    ["Dart", "Java", "Python", "Swift", "C++"],
    "Dart",
  ),
];

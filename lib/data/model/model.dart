import 'package:flutter_application_6/resources/resources.dart';

class DoctorsModel {
  final String name;
  final String specialty;
  final double raiting;
  final String image;
  final String info;
  final String phoneNumber;
  final String email;
  final String address;
  final List<FeedbackModel> feedback;

  DoctorsModel(
      {required this.name,
      required this.specialty,
      required this.raiting,
      required this.image,
      required this.info,
      required this.phoneNumber,
      required this.email,
      required this.address,
      required this.feedback});
}

class FeedbackModel {
  final String name;
  final String img;
  final String feedback;
  final String date;

  FeedbackModel(
      {required this.name, required this.img, required this.feedback, required this.date});
}

abstract class DoctorsData {
  final List<DoctorsModel> doctorsData = [
    DoctorsModel(
        name: "Айбек Сатыбалдиев",
        specialty: "кардиолог",
        raiting: 4.4,
        image: AppImg.maskGroup,
        info:
            """Максимально внимательно относится к каждому своему пациенту, старается найти индивидуальный подход, успешно диагностирует и получает хорошие результаты в лечении острых и хронических болезней. 
В частности, занимается вопросами нарушения сердечного ритма, врожденными пороками сердца, так называемыми синкопальными состояниями (проще говоря – обмороками).
Для подбора эффективного лечения врач оценивает жизненно важные функции, анализирует информацию о принимаемых ребенком лекарствах и перенесенных заболеваниях, назначает необходимые исследования нервной системы. 
Возможно получение медицинской помощи без взимания платы при очном обращении в объемах, предусмотренных стандартами обязательного медицинского страхования (ОМС).
""",
        phoneNumber: "+996 555 89 39 54\n+996 771 29 55 22",
        email: "akylbekov.ch@example.com",
        address: "г. Бишкек, ул. Московская, 224, клиника “Медикал Нео”",
        feedback: [
          FeedbackModel(name: "Айзан Алишерова", img: AppImg.img1, feedback: "Попала к Чынгызу Маратовичу, когда практически не могла ходить - было защемление седалищного нерва. До этого обследовалась и у других специалистов, но лечение у Чынгыза Маратовича, его поддержка и четкие наставления дали хороший эффект. В лечение входили и таблетки, и уколы, витамины и гимнастика (даже через боль ее рекомендовали делать). Спустя 3 месяца лечения боль стала отступать. Пишу отзыв спустя 2 года - сейчас все хорошо! Никогда не забуду участие и профессионализм доктора. Огромное спасибо вам!", date: "15 июня 2020"),
          FeedbackModel(name: "Умар Маратович Асылбеков", img: AppImg.img2, feedback: "Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией. В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!", date: "10 июня 2020"),
          FeedbackModel(name: "Елена Ким", img: AppImg.img3, feedback: "Спасибо большое Чынгызу Маратовичу за высокий профессионализм , к моим жалобам отнесся с очень глубоким вниманием, назначил важные обследования и выписал нужные лекарства. Сейчас чувствую себя прекрасно. Ещё раз спасибо !", date: "31 мая 2020"),
          ])
  ];
}
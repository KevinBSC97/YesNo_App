
import '../../domain/entities/message.dart';

class YesNoModel {
    final String answer;
    final bool forced;
    final String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };
    
    Message toMessageEntities() => Message (
      text: answer == 'yes' ? 'Si' : 'No',
      fromWho: FromWho.hers,
      imageUrl: image
    );
}


// class YesNoModel{
//   String answer;
//   bool forced;
//   String image;

//   YesNoModel({
//     required this.answer,
//     required this.forced,
//     required this.image
//   });

//   factory YesNoModel.fromJsonMap(Map<String,dynamic> json) =>
//     YesNoModel(
//       answer: json['answer'], 
//       forced: json['forced'], 
//       image: json['image']
//     );
// }
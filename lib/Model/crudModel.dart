// class crudModel {
//   String? id;
//   String? title;
//
//   crudModel({this.id, this.title});
//
//   crudModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     return data;
//   }
// }
//

class crudModel {
  String? id;
  String? desti;
  String? place;
  String? add;

  crudModel({this.id, this.desti, this.place, this.add});

  crudModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    desti = json['desti'];
    place = json['place'];
    add = json['Add'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['desti'] = this.desti;
    data['place'] = this.place;
    data['Add'] = this.add;
    return data;
  }
}
// // To parse this JSON data, do
// //
// //     final post = postFromJson(jsonString);
//
// import 'dart:convert';
//
// List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));
//
// String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Post {
//   Post({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.images,
//     required this.categoryId,
//   });
//
//   int id;
//   String title;
//   int price;
//   String description;
//   Category category;
//   List<String> images;
//   int categoryId;
//
//   factory Post.fromJson(Map<String, dynamic> json) => Post(
//     id: json["id"],
//     title: json["title"],
//     price: json["price"],
//     description: json["description"],
//     category: Category.fromJson(json["category"]),
//     images: List<String>.from(json["images"].map((x) => x)),
//     categoryId: json["categoryId"] == null ? null : json["categoryId"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "title": title,
//     "price": price,
//     "description": description,
//     "category": category.toJson(),
//     "images": List<dynamic>.from(images.map((x) => x)),
//     "categoryId": categoryId == null ? null : categoryId,
//   };
// }
//
// class Category {
//   Category({
//     required this.id,
//     required this.name,
//     required this.image,
//     required this.keyLoremSpace,
//   });
//
//   int id;
//   Name name;
//   String image;
//   String keyLoremSpace;
//
//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//     id: json["id"],
//
//     image: json["image"],
//     keyLoremSpace: json["keyLoremSpace"] == null ? null : json["keyLoremSpace"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": nameValues.reverse[name],
//     "image": image,
//     "keyLoremSpace": keyLoremSpace == null ? null : keyLoremSpace,
//   };
// }
//
// enum Name { FURNITURE, ELECTRONICS, OTHERS, SHOES, CLOTHES }
//
// final nameValues = EnumValues({
//   "Clothes": Name.CLOTHES,
//   "Electronics": Name.ELECTRONICS,
//   "Furniture": Name.FURNITURE,
//   "Others": Name.OTHERS,
//   "Shoes": Name.SHOES
// });
//
// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }

class PictureModel {
  PictureModel({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  final String large;
  final String medium;
  final String thumbnail;

  factory PictureModel.fromJson(Map<String, dynamic> json) {
    return PictureModel(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }
}

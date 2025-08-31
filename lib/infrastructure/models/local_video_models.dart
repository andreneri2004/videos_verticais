import 'package:videos_verticais/domain/entities/video_post.dart';

class LocalVideoModels {
  LocalVideoModels({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  factory LocalVideoModels.fromJson(Map<String, dynamic> json) =>
      LocalVideoModels(
        name: json['name'],
        videoUrl: json['videoUrl'],
        likes: json['likes'],
        views: json['views'],
      );

  Map<String, dynamic> toJson() => {
    'name': name,
    'videoUrl': videoUrl,
    'likes': likes,
    'views': views,
  };

  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoUrl: videoUrl, liks: likes, views: views);
}

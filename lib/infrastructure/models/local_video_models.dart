import 'package:videos_verticais/domain/entities/video_post.dart';

class LocalVideoModels {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModels({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  //criação de instancias a partir de um json.
  factory LocalVideoModels.fromJson(Map<String, dynamic> json) =>
      LocalVideoModels(
        name: json['name'] ?? 'Sem nome',
        videoUrl: json['videoUrl'],
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0,
      );

  Map<String, dynamic> toJson() => {
    'name': name,
    'videoUrl': videoUrl,
    'likes': likes,
    'views': views,
  };

  //converter o model para a entidade
  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoUrl: videoUrl, liks: likes, views: views);
}

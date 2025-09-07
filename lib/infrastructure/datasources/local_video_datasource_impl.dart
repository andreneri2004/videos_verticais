import 'package:videos_verticais/domain/datasources/video_post_datasource.dart';
import 'package:videos_verticais/domain/entities/video_post.dart';
import 'package:videos_verticais/infrastructure/models/local_video_models.dart';
import 'package:videos_verticais/shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModels.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}

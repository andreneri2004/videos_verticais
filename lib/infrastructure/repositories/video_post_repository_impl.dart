import 'package:videos_verticais/domain/datasources/video_post_datasource.dart';
import 'package:videos_verticais/domain/entities/video_post.dart';
import 'package:videos_verticais/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videoPostDatasource;

  VideoPostRepositoryImpl({required this.videoPostDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) {
    return videoPostDatasource.getTrendingVideoByPage(page);
  }
}

import 'package:videos_verticais/domain/entities/video_post.dart';

abstract class VideoPostDatasource {
  Future<List<VideoPost>> getTrendingVideoByPage(int page);
  Future<List<VideoPost>> getFavoriteVideoByUser(String userId);
}

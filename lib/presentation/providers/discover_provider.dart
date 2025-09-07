import 'package:flutter/material.dart';
import 'package:videos_verticais/domain/entities/video_post.dart';
import 'package:videos_verticais/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repository, DataSource

  final VideoPostRepository videoPostRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModels.fromJson(video).toVideoPostEntity())
    //     .toList();

    final newVideos = await videoPostRepository.getTrendingVideoByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}

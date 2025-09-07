import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videos_verticais/config/theme/app_theme.dart';
import 'package:videos_verticais/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:videos_verticais/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:videos_verticais/presentation/providers/discover_provider.dart';
import 'package:videos_verticais/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoRepository = VideoPostRepositoryImpl(
      videoPostDatasource: LocalVideoDatasource(),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) =>
              DiscoverProvider(videoPostRepository: videoRepository)
                ..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'Videos Verticais',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}

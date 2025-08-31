import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videos_verticais/presentation/providers/discover_provider.dart';
import 'package:videos_verticais/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoveryProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoveryProvider.initialLoading
          ? const Center(child: CircularProgressIndicator())
          : VideoScrollableView(videos: discoveryProvider.videos),
    );
  }
}

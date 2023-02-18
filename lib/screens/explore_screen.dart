// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:thinees/api/mock_thinees_service.dart';

import '../components/components.dart';
import '../models/models.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockThineesService();

  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Add todayRecipe
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
              const SizedBox(height: 16),
              FriendPostListView(friendPost: snapshot.data?.friendPosts ?? []),
              // Container(
              //   height: 400,
              //   color: Colors.green,
              // )
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../presentation/screens/home_screen.dart';
import '../../presentation/screens/plant_detail_screen.dart';
import '../../presentation/screens/disease_detail_screen.dart';
import '../../presentation/screens/search_screen.dart';
import '../../domain/entities/plant.dart';
import '../../domain/entities/disease.dart';

final goRouterProvider = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/plant_detail',
      builder: (context, state) {
        final plant = state.extra as Plant;
        return PlantDetailScreen(plant: plant);
      },
    ),
    GoRoute(
      path: '/disease_detail',
      builder: (context, state) {
        final disease = state.extra as Disease;
        return DiseaseDetailScreen(disease: disease);
      },
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
  ],
);

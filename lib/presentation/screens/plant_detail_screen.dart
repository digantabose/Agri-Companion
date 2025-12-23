import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/plant.dart';
import '../providers/plant_provider.dart';
import '../widgets/disease_card.dart';

class PlantDetailScreen extends ConsumerWidget {
  final Plant plant;

  const PlantDetailScreen({super.key, required this.plant});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diseasesAsync = ref.watch(diseaseListProvider(plant.id));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(plant.name),
              background: plant.images.isNotEmpty
                  ? plant.images.first.startsWith('http')
                      ? CachedNetworkImage(
                          imageUrl: plant.images.first,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          plant.images.first,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Image.asset(
                            'assets/images/placeholder.jpg',
                            fit: BoxFit.cover,
                          ),
                        )
                  : Container(color: Colors.green),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow(
                      Icons.science, "Scientific Name", plant.scientificName),
                  _buildInfoRow(Icons.category, "Category", plant.category),
                  _buildInfoRow(Icons.wb_sunny, "Climate", plant.climate),
                  _buildInfoRow(Icons.landscape, "Soil", plant.soilType),
                  _buildInfoRow(Icons.calendar_today, "Season", plant.season),
                  const SizedBox(height: 16),
                  const Text("Description",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(plant.description,
                      style: const TextStyle(fontSize: 16, height: 1.4)),
                  const SizedBox(height: 24),
                  const Text("Common Diseases",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  diseasesAsync.when(
                    data: (diseases) {
                      if (diseases.isEmpty)
                        return const Text("No diseases recorded.");
                      return Column(
                        children: diseases
                            .map((disease) => DiseaseCard(
                                  disease: disease,
                                  onTap: () => context.push('/disease_detail',
                                      extra: disease),
                                ))
                            .toList(),
                      );
                    },
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (e, _) => Text("Error: $e"),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.green.shade700),
          const SizedBox(width: 12),
          Text("$label: ", style: const TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

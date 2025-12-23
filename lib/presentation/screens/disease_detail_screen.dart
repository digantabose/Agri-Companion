import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../domain/entities/disease.dart';

class DiseaseDetailScreen extends StatelessWidget {
  final Disease disease;

  const DiseaseDetailScreen({super.key, required this.disease});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(disease.name),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Overview"),
              Tab(text: "Remedies"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildOverviewTab(context),
            _buildRemedyTab(context),
          ],
        ),
      ),
    );
  }

  Widget _buildOverviewTab(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (disease.images.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: disease.images.first.startsWith('http')
                  ? CachedNetworkImage(
                      imageUrl: disease.images.first,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      disease.images.first,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Image.asset(
                        'assets/images/placeholder.jpg',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
          const SizedBox(height: 16),
          _buildSectionTitle("Type"),
          Text(disease.type),
          const Divider(height: 24),
          _buildSectionTitle("Symptoms"),
          ...disease.symptoms.map((s) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  children: [
                    const Icon(Icons.circle, size: 6, color: Colors.green),
                    const SizedBox(width: 8),
                    Expanded(child: Text(s)),
                  ],
                ),
              )),
          const Divider(height: 24),
          _buildSectionTitle("Causes"),
          Text(disease.causes),
          const Divider(height: 24),
          _buildSectionTitle("Severity"),
          Text(disease.severity,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red)),
        ],
      ),
    );
  }

  Widget _buildRemedyTab(BuildContext context) {
    final remedy = disease.remedy;
    if (remedy == null) {
      return const Center(child: Text("No remedy information available."));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Preventive Measures", Icons.shield),
          ...remedy.preventiveMeasures.map((e) => ListTile(
                leading: const Icon(Icons.check, color: Colors.green),
                title: Text(e),
                contentPadding: EdgeInsets.zero,
                dense: true,
              )),
          const SizedBox(height: 16),
          _buildSectionHeader("Organic Remedies", Icons.eco),
          ...remedy.organicRemedies.map((e) => ListTile(
                leading: const Icon(Icons.spa, color: Colors.green),
                title: Text(e),
                contentPadding: EdgeInsets.zero,
                dense: true,
              )),
          const SizedBox(height: 16),
          _buildSectionHeader("Chemical Medicines", Icons.science),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.amberAccent,
            child: const Row(children: [
              Icon(Icons.warning),
              SizedBox(width: 8),
              Expanded(
                  child: Text(
                      "Use chemicals with caution. Follow safety instructions."))
            ]),
          ),
          const SizedBox(height: 8),
          ...remedy.chemicalMedicines.map((m) => Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(m.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text("Trade Name: ${m.tradeName}",
                          style: TextStyle(color: Colors.grey.shade600)),
                      const Divider(),
                      _buildDetailRow("Dosage", m.dosage),
                      _buildDetailRow("Method", m.applicationMethod),
                      _buildDetailRow("Type", m.type),
                      _buildDetailRow("Safety", m.safetyPrecautions),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Text("$label: ", style: const TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildSectionHeader(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.green.shade800),
        const SizedBox(width: 8),
        Text(title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade800)),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5EF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Projects',
          style: TextStyle(
            color: Color(0xFF174A3A),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF174A3A),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
          tooltip: 'Back to Home',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                const Text(
                  'My Projects',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF174A3A),
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'A selection of projects I have explored while learning '
                      'technology and developing my skills.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF666666),
                  ),
                ),

                const SizedBox(height: 32),

                ProjectCard(
                  number: '01',
                  title: 'Video to Text Conversion',
                  description:
                  'A system that converts spoken content from videos '
                      'into text using speech recognition, making video '
                      'content easier to read, search, and understand.',
                  technologies: 'Python • Speech Recognition • NLP',
                ),

                ProjectCard(
                  number: '02',
                  title: 'Deepfake Audio Detection',
                  description:
                  'A machine learning project designed to identify '
                      'whether an audio clip is genuine or AI-generated, '
                      'helping detect manipulated and synthetic voices.',
                  technologies:
                  'Python • Machine Learning • Audio Processing',
                ),

                ProjectCard(
                  number: '03',
                  title: 'Personal Safety & Emergency App',
                  description:
                  'An AI-powered safety application designed to recognize '
                      'emergency situations and provide intelligent assistance '
                      'when users may be unable to respond or communicate normally.',
                  technologies: 'Flutter • Dart • AI/ML',
                ),

                ProjectCard(
                  number: '04',
                  title: 'Car Price Prediction',
                  description:
                  'A machine learning project that predicts the estimated '
                      'price of a car based on factors such as brand, model, '
                      'year, mileage, and other relevant features.',
                  technologies: 'Python • Machine Learning • Data Science',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String number;
  final String title;
  final String description;
  final String technologies;

  const ProjectCard({
    super.key,
    required this.number,
    required this.title,
    required this.description,
    required this.technologies,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFD9DFDC),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF7A8F87),
            ),
          ),
          const SizedBox(width: 22),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF174A3A),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Color(0xFF555555),
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  technologies,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF6A756F),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5EF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'About Me',
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
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                const Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF174A3A),
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  'Hi, I’m Yashaswini, a Computer Science Engineering '
                      'student passionate about technology and learning new things. '
                      'I’m particularly interested in cybersecurity, cloud security, '
                      'and software development.',
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.7,
                    color: Color(0xFF444444),
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  'I enjoy building projects, solving problems, and exploring '
                      'new technologies. Beyond coding, I love writing and expressing '
                      'my creativity through poems and stories.',
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.7,
                    color: Color(0xFF444444),
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  'I’m always curious, always learning, and looking forward '
                      'to turning my ideas into meaningful projects.',
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.7,
                    color: Color(0xFF444444),
                  ),
                ),

                const SizedBox(height: 42),

                const Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF174A3A),
                  ),
                ),

                const SizedBox(height: 18),

                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: const [
                    SkillTag('C'),
                    SkillTag('Python'),
                    SkillTag('HTML'),
                    SkillTag('CSS'),
                    SkillTag('SQL'),
                    SkillTag('Linux'),
                    SkillTag('Git & GitHub'),
                  ],
                ),

                const SizedBox(height: 42),

                const Text(
                  'Areas of Interest',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF174A3A),
                  ),
                ),

                const SizedBox(height: 18),

                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: const [
                    InterestTag('Cybersecurity'),
                    InterestTag('Cloud Security'),
                    InterestTag('Software Development'),
                    InterestTag('Technology'),
                    InterestTag('Creative Writing'),
                  ],
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SkillTag extends StatelessWidget {
  final String text;

  const SkillTag(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 11,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFE1ECE7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF174A3A),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class InterestTag extends StatelessWidget {
  final String text;

  const InterestTag(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 11,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFD0D8D4),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF444444),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
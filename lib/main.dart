import 'package:flutter/material.dart';
import 'pages/about_page.dart';
import 'pages/projects_page.dart';

void main() {
  runApp(const YashaswiniPortfolio());
}

class YashaswiniPortfolio extends StatelessWidget {
  const YashaswiniPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yashaswini Puligilla',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/projects': (context) => const ProjectsPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5EF),
      body: SafeArea(
        child: Column(
          children: [
            _buildNavigation(context),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(32),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 850),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFF174A3A),
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            'YP',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 28),
                        const Text(
                          'YASHASWINI PULIGILLA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: Color(0xFF174A3A),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'B.Tech Computer Science Engineering Student',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF666666),
                          ),
                        ),
                        const SizedBox(height: 26),
                        const Text(
                          'Hi, I’m Yashaswini 👋\n'
                              'A Computer Science Engineering student who loves '
                              'technology, creativity, and learning new things. '
                              'I’m exploring cybersecurity, cloud security, and '
                              'software development while building projects '
                              'along the way.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.7,
                            color: Color(0xFF444444),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 10,
                          runSpacing: 10,
                          children: const [
                            _Highlight('Cybersecurity'),
                            _Highlight('Cloud Security'),
                            _Highlight('Software Development'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigation(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 28,
        vertical: 18,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE0E4E1),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _NavButton(
            title: 'Home',
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          const SizedBox(width: 12),
          _NavButton(
            title: 'About',
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/about');
            },
          ),
          const SizedBox(width: 12),
          _NavButton(
            title: 'Projects',
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/projects');
            },
          ),
        ],
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const _NavButton({
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF174A3A),
        ),
      ),
    );
  }
}

class _Highlight extends StatelessWidget {
  final String text;

  const _Highlight(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 9,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFE1ECE7),
        borderRadius: BorderRadius.circular(20),
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
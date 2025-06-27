import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'save_url_tutorial.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/SaveUrlTutorial',
      builder: (context, state) => const SaveUrlTutorial(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'My Web App',
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('홈')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/SaveUrlTutorial'),
          child: const Text('튜토리얼 보러가기'),
        ),
      ),
    );
  }
}
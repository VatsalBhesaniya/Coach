import 'package:coach/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().setThemeMode(ThemeMode.light);
            },
            icon: const Icon(Icons.light_mode),
          ),
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().setThemeMode(ThemeMode.dark);
            },
            icon: const Icon(Icons.dark_mode),
          ),
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().setThemeMode(ThemeMode.system);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: const SizedBox(),
    );
  }
}

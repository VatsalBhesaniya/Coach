import 'package:coach/config/app_config.dart';
import 'package:coach/modules/dashboard/dashboard_screen.dart';
import 'package:coach/theme/theme.dart';
import 'package:coach/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  const String env = String.fromEnvironment('ENV', defaultValue: 'dev');
  await AppConfig.load(env);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: context.watch<ThemeProvider>().themeMode,
          home: const DashboardScreen(),
        );
      }),
    );
  }
}

import 'package:example_usage/app_colors.dart';
import 'package:example_usage/app_text_styles.dart';
import 'package:example_usage/build_context_extensions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: context.appColors.defaultColor,
              secondary: context.appColors.secondary,
            ),
        scaffoldBackgroundColor: context.appColors.background,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: context.appColors.defaultColor,
          selectionColor: context.appColors.defaultColor?.withOpacity(0.2),
          selectionHandleColor: context.appColors.defaultColor,
        ),
        extensions: [
          AppColors.primary(),
          AppTextStyles.primary(defaultColor: AppColors.primary().defaultColor!)
        ],
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

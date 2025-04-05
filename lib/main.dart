import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final bool isDarkMode = prefs.getBool('isDarkMode') ?? false;
  final bool useDynamicColors = prefs.getBool('useDynamicColors') ?? true;

  runApp(MainApp(
    initialIsDarkMode: isDarkMode,
    initialUseDynamicColors: useDynamicColors,
  ));
}

class MainApp extends StatefulWidget {
  final bool initialIsDarkMode;
  final bool initialUseDynamicColors;

  const MainApp({
    super.key,
    this.initialIsDarkMode = false,
    this.initialUseDynamicColors = true,
  });

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late bool isDarkMode;
  late bool useDynamicColors;

  @override
  void initState() {
    super.initState();
    isDarkMode = widget.initialIsDarkMode;
    useDynamicColors = widget.initialUseDynamicColors;
  }

  void _toggleDarkMode(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', value);

    setState(() {
      isDarkMode = value;
    });
  }

  void _toggleDynamicColors(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('useDynamicColors', value);

    setState(() {
      useDynamicColors = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Define default light & dark color schemes
    ColorScheme defaultLightColorScheme = ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    );

    ColorScheme defaultDarkColorScheme = ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    );

    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        ColorScheme lightColorScheme;
        ColorScheme darkColorScheme;

        if (useDynamicColors && lightDynamic != null && darkDynamic != null) {
          lightColorScheme = lightDynamic;
          darkColorScheme = darkDynamic;
        } else {
          lightColorScheme = defaultLightColorScheme;
          darkColorScheme = defaultDarkColorScheme;
        }

        return MaterialApp(
          theme: ThemeData(
            colorScheme: lightColorScheme,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: darkColorScheme,
            useMaterial3: true,
          ),
          themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: ColorDemonstratorHome(
            isDarkMode: isDarkMode,
            onDarkModeChanged: _toggleDarkMode,
            useDynamicColors: useDynamicColors,
            onDynamicColorChanged: _toggleDynamicColors,
          ),
        );
      },
    );
  }
}

class ColorDemonstratorHome extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onDarkModeChanged;
  final bool useDynamicColors;
  final ValueChanged<bool> onDynamicColorChanged;

  const ColorDemonstratorHome({
    super.key,
    required this.isDarkMode,
    required this.onDarkModeChanged,
    required this.useDynamicColors,
    required this.onDynamicColorChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Demonstrator'),
        actions: [
          Row(
            children: [
              const Text('Dark'),
              Switch(
                value: isDarkMode,
                onChanged: onDarkModeChanged,
              ),
            ],
          ),
          Row(
            children: [
              const Text('Dynamic'),
              Switch(
                value: useDynamicColors,
                onChanged: onDynamicColorChanged,
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildColorSection(context, 'Primary', [
              _buildColorItem(context, 'primary'),
              _buildColorItem(context, 'onPrimary'),
              _buildColorItem(context, 'primaryContainer'),
              _buildColorItem(context, 'onPrimaryContainer'),
              _buildColorItem(context, 'inversePrimary'),
              _buildColorItem(context, 'primaryFixed'),
              _buildColorItem(context, 'primaryFixedDim'),
              _buildColorItem(context, 'onPrimaryFixed'),
              _buildColorItem(context, 'onPrimaryFixedVariant'),
            ]),
            _buildColorSection(context, 'Secondary', [
              _buildColorItem(context, 'secondary'),
              _buildColorItem(context, 'onSecondary'),
              _buildColorItem(context, 'secondaryContainer'),
              _buildColorItem(context, 'onSecondaryContainer'),
              _buildColorItem(context, 'secondaryFixed'),
              _buildColorItem(context, 'secondaryFixedDim'),
              _buildColorItem(context, 'onSecondaryFixed'),
              _buildColorItem(context, 'onSecondaryFixedVariant'),
            ]),
            _buildColorSection(context, 'Tertiary', [
              _buildColorItem(context, 'tertiary'),
              _buildColorItem(context, 'onTertiary'),
              _buildColorItem(context, 'tertiaryContainer'),
              _buildColorItem(context, 'onTertiaryContainer'),
              _buildColorItem(context, 'tertiaryFixed'),
              _buildColorItem(context, 'tertiaryFixedDim'),
              _buildColorItem(context, 'onTertiaryFixed'),
              _buildColorItem(context, 'onTertiaryFixedVariant'),
            ]),
            _buildColorSection(context, 'Error', [
              _buildColorItem(context, 'error'),
              _buildColorItem(context, 'onError'),
              _buildColorItem(context, 'errorContainer'),
              _buildColorItem(context, 'onErrorContainer'),
            ]),
            _buildColorSection(context, 'Surface', [
              _buildColorItem(context, 'surface'),
              _buildColorItem(context, 'onSurface'),
              _buildColorItem(context, 'surfaceVariant'),
              _buildColorItem(context, 'onSurfaceVariant'),
              _buildColorItem(context, 'surfaceTint'),
              _buildColorItem(context, 'inverseSurface'),
              _buildColorItem(context, 'onInverseSurface'),
              _buildColorItem(context, 'surfaceBright'),
              _buildColorItem(context, 'surfaceDim'),
            ]),
            _buildColorSection(context, 'Surface Container', [
              _buildColorItem(context, 'surfaceContainer'),
              _buildColorItem(context, 'surfaceContainerLow'),
              _buildColorItem(context, 'surfaceContainerLowest'),
              _buildColorItem(context, 'surfaceContainerHigh'),
              _buildColorItem(context, 'surfaceContainerHighest'),
            ]),
            _buildColorSection(context, 'Other', [
              _buildColorItem(context, 'outline'),
              _buildColorItem(context, 'outlineVariant'),
              _buildColorItem(context, 'shadow'),
              _buildColorItem(context, 'scrim'),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildColorSection(BuildContext context, String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ...children,
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildColorItem(BuildContext context, String colorName) {
    Color color;
    try {
      // Get color from ColorScheme using map
      color = Theme.of(context).colorScheme.toMap()[colorName] ??
          Colors.transparent;
    } catch (e) {
      color = Colors.transparent;
    }

    final bool isLight = color.computeLuminance() > 0.5;
    final textColor = isLight ? Colors.black : Colors.white;

    // Get color hex code
    final hexCode = '#${color.value.toRadixString(16).padLeft(8, '0').substring(2)}';

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              colorName,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              hexCode,
              style: TextStyle(
                color: textColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension ColorSchemeExtension on ColorScheme {
  Map<String, Color?> toMap() {
    return {
      'primary': primary,
      'onPrimary': onPrimary,
      'primaryContainer': primaryContainer,
      'onPrimaryContainer': onPrimaryContainer,
      'inversePrimary': inversePrimary,
      'primaryFixed': primaryFixed,
      'primaryFixedDim': primaryFixedDim,
      'onPrimaryFixed': onPrimaryFixed,
      'onPrimaryFixedVariant': onPrimaryFixedVariant,
      'secondary': secondary,
      'onSecondary': onSecondary,
      'secondaryContainer': secondaryContainer,
      'onSecondaryContainer': onSecondaryContainer,
      'secondaryFixed': secondaryFixed,
      'secondaryFixedDim': secondaryFixedDim,
      'onSecondaryFixed': onSecondaryFixed,
      'onSecondaryFixedVariant': onSecondaryFixedVariant,
      'tertiary': tertiary,
      'onTertiary': onTertiary,
      'tertiaryContainer': tertiaryContainer,
      'onTertiaryContainer': onTertiaryContainer,
      'tertiaryFixed': tertiaryFixed,
      'tertiaryFixedDim': tertiaryFixedDim,
      'onTertiaryFixed': onTertiaryFixed,
      'onTertiaryFixedVariant': onTertiaryFixedVariant,
      'error': error,
      'onError': onError,
      'errorContainer': errorContainer,
      'onErrorContainer': onErrorContainer,
      'surface': surface,
      'onSurface': onSurface,
      'surfaceVariant': surfaceVariant,
      'onSurfaceVariant': onSurfaceVariant,
      'surfaceTint': surfaceTint,
      'inverseSurface': inverseSurface,
      'onInverseSurface': onInverseSurface,
      'surfaceBright': surfaceBright,
      'surfaceDim': surfaceDim,
      'surfaceContainer': surfaceContainer,
      'surfaceContainerLow': surfaceContainerLow,
      'surfaceContainerLowest': surfaceContainerLowest,
      'surfaceContainerHigh': surfaceContainerHigh,
      'surfaceContainerHighest': surfaceContainerHighest,
      'outline': outline,
      'outlineVariant': outlineVariant,
      'shadow': shadow,
      'scrim': scrim,
    };
  }
}

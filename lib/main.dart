import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('Color Demonstrator'),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          // Primary group
          Container(
            color: Theme.of(context).colorScheme.primary,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('primary'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onPrimary,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onPrimary'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.primaryContainer,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('primaryContainer'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onPrimaryContainer'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.inversePrimary,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('inversePrimary'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.primaryFixed,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('primaryFixed'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.primaryFixedDim,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('primaryFixedDim'),
            ),
          ),
          
          // Secondary group
          Container(
            color: Theme.of(context).colorScheme.secondary,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('secondary'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onSecondary,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onSecondary'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.secondaryContainer,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('secondaryContainer'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onSecondaryContainer,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onSecondaryContainer'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.secondaryFixed,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('secondaryFixed'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.secondaryFixedDim,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('secondaryFixedDim'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onSecondaryFixed,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onSecondaryFixed'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onSecondaryFixedVariant,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onSecondaryFixedVariant'),
            ),
          ),
          
          // Tertiary group
          Container(
            color: Theme.of(context).colorScheme.tertiary,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('tertiary'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onTertiary,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onTertiary'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.tertiaryContainer,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('tertiaryContainer'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onTertiaryContainer,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onTertiaryContainer'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.tertiaryFixed,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('tertiaryFixed'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.tertiaryFixedDim,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('tertiaryFixedDim'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onTertiaryFixed,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onTertiaryFixed'),
            ),
          ),
          
          // Error group
          Container(
            color: Theme.of(context).colorScheme.error,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('error'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onError,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onError'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.errorContainer,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('errorContainer'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onErrorContainer,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onErrorContainer'),
            ),
          ),
          
          // Surface group
          Container(
            color: Theme.of(context).colorScheme.surface,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('surface'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onSurface,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onSurface'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surfaceVariant,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('surfaceVariant'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onSurfaceVariant'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surfaceTint,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('surfaceTint'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.inverseSurface,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('inverseSurface'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onInverseSurface,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('onInverseSurface'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surfaceBright,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('surfaceBright'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surfaceDim,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('surfaceDim'),
            ),
          ),
          
          // Surface Container group
          Container(
            color: Theme.of(context).colorScheme.surfaceContainer,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('surfaceContainer'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surfaceContainerLow,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('surfaceContainerLow'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surfaceContainerLowest,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('surfaceContainerLowest'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surfaceContainerHigh,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('surfaceContainerHigh'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('surfaceContainerHighest'),
            ),
          ),
          
          // Other utility colors
          Container(
            color: Theme.of(context).colorScheme.outline,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('outline'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.outlineVariant,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('outlineVariant'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.shadow,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('shadow'),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.scrim,
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text('scrim'),
            ),
          ),
        ],
        ),
      ),
      ),
    );
  }
}

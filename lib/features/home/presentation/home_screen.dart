import 'package:material_ui/material_ui.dart';

import 'package:ozithy_mobile/app/theme/ozithy_theme.dart';

/// Lean foundation home screen — shopping features land in later phases.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ozithy'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ozithy',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: OzithyColors.brand,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Packaging marketplace',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: OzithyColors.stone900,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Foundation scaffold — API-driven buyer client',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

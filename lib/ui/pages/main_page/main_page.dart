import 'package:flutter/material.dart';
import 'package:sport_app/ui/app_routes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Учет соревнований'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            _buildMenuCard(
              onPressed: () => Navigator.of(context).pushNamed(sportsmanList),
              name: 'Спортсмены',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required VoidCallback onPressed,
    required String name,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        child: Text(name),
      ),
    );
  }
}

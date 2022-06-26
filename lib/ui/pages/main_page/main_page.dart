import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/ui/app_routes.dart';
import 'package:sport_app/ui/theme/theme_model.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Учет соревнований'),
        actions: [
          IconButton(
              onPressed: context.watch<ThemeCubit>().toggle,
              icon: Icon(
                context.watch<ThemeCubit>().state.brightness == Brightness.light
                    ? Icons.sunny
                    : Icons.nightlight,
              ))
        ],
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            _buildMenuCard(
              onPressed: () => Navigator.of(context).pushNamed(sportsmanList),
              name: 'Спортсмены',
              image: 'assets/pictures/sportsmen.jpeg',
              context: context,
            ),
            _buildMenuCard(
              onPressed: () => Navigator.of(context).pushNamed(sportsmanList),
              name: 'Соревнования',
              image: 'assets/pictures/cometition.jpeg',
              context: context,
            ),
            _buildMenuCard(
              onPressed: () => Navigator.of(context).pushNamed(sportsmanList),
              name: 'Судьи',
              image: 'assets/pictures/cometition.jpeg',
              context: context,
            ),
            _buildMenuCard(
              onPressed: () => Navigator.of(context).pushNamed(sportsmanList),
              name: 'Тренера',
              image: 'assets/pictures/cometition.jpeg',
              context: context,
            ),
            _buildMenuCard(
              onPressed: () => Navigator.of(context).pushNamed(sportsmanList),
              name: 'Результаты\nсоревнований',
              image: 'assets/pictures/cometition.jpeg',
              context: context,
            ),
            _buildMenuCard(
              onPressed: () => Navigator.of(context).pushNamed(sportsmanList),
              name: 'Площадки',
              image: 'assets/pictures/cometition.jpeg',
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required VoidCallback onPressed,
    required String name,
    required String image,
    required BuildContext context,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.tertiary,
                BlendMode.color,
              ),
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FittedBox(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

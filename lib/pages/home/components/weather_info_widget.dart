import 'package:flutter/material.dart';
import 'package:weather_app/pages/home/components/vertical_divider_widget.dart';

class WeatherInfoWidget extends StatelessWidget {
  const WeatherInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 0.12,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white10, borderRadius: BorderRadius.circular(25)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WeatherInfo(
            image: 'assets/night-wind.png',
            speed: '13km/h',
            type: 'Rain',
          ),
          VerticalDividerWidget(),
          WeatherInfo(
            image: 'assets/drop.png',
            speed: '20%',
            type: 'Humidity',
          ),
          VerticalDividerWidget(),
          WeatherInfo(
            image: 'assets/wind.png',
            speed: '87%',
            type: 'Rain',
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    super.key,
    required this.image,
    required this.speed,
    required this.type,
    this.color,
  });
  final String image;
  final String speed;
  final String type;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 25,
          width: 25,
          fit: BoxFit.cover,
          color: color,
        ),
        const Flexible(child: SizedBox(height: 8)),
        Text(
          speed,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white),
        ),
        const Flexible(child: SizedBox(height: 3)),
        Text(type),
      ],
    );
  }
}

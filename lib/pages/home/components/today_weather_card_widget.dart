import 'package:flutter/material.dart';

import '../../../data/data.dart';

class TodayWeatherCard extends StatelessWidget {
  const TodayWeatherCard({
    super.key,
    required this.weather,
    required this.index,
  });
  final TodayWeather weather;
  final int index;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: size.width * 0.2,
      height: size.height * 0.1,
      decoration: BoxDecoration(
          color: index == 1 ? Colors.blue.shade300 : Colors.white12,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${weather.degree}°',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Image.asset(
              weather.image,
              height: 28,
              width: 28,
              fit: BoxFit.cover,
            ),
          ),
          Text(weather.time.toStringAsFixed(2)),
        ],
      ),
    );
  }
}

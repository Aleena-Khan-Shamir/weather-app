import 'package:flutter/material.dart';
import 'package:weather_app/data/data.dart';

class WeeklyInfoCardWidget extends StatelessWidget {
  final WeeklyInfo weeklyInfo;
  final Color? color;

  const WeeklyInfoCardWidget({
    Key? key,
    this.color,
    required this.weeklyInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.12,
            child: Text(
              weeklyInfo.day,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Spacer(),
          Image.asset(
            weeklyInfo.image,
            height: 35,
            width: 35,
            fit: BoxFit.cover,
            color: color,
          ),
          const SizedBox(width: 5),
          Text(
            weeklyInfo.weatherCodition,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
          Text(
            '+${weeklyInfo.highTemperature}\t\t',
            style: const TextStyle(color: Colors.white),
          ),
          Text('+${weeklyInfo.lowTemperature}'),
        ],
      ),
    );
  }
}

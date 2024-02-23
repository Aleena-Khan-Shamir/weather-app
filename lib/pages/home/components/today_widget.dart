import 'package:flutter/material.dart';
import 'package:weather_app/pages/weekly/page.dart';

class TodayWidget extends StatelessWidget {
  const TodayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Today',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const WeeklyPage())),
              child: Text(
                '7 days >',
                style: Theme.of(context).textTheme.titleMedium,
              ))
        ],
      ),
    );
  }
}

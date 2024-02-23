import 'package:flutter/material.dart';
import 'package:weather_app/components/shadow_container.dart';

class WeatherDisplayWidget extends StatelessWidget {
  const WeatherDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.45,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          LayoutBuilder(
              builder: (context, constraints) => ShadowContainer(
                  height: constraints * 0.4,
                  width: constraints,
                  padding: constraints * 0.3,
                  blurRadius: 60,
                  spreadRadius: 80)),
          Positioned(
            top: size.height * 0.01,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white70)),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber)),
                const Flexible(child: SizedBox(width: 5)),
                const Text(
                  'Updating',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )
              ]),
            ),
          ),
          Positioned(
            top: size.height * 0.08,
            child: SizedBox(
              height: size.height * 0.25,
              width: size.width,
              child: Image.asset('assets/thunder_cloud.webp'),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Text('23°',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 80, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

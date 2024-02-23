import 'package:flutter/material.dart';
import 'package:weather_app/components/custom_appbar_widget.dart';
import 'package:weather_app/components/shadow_container.dart';
import 'package:weather_app/data/data.dart';
import 'package:weather_app/pages/weekly/components/weekly_info_card.dart';

import '../home/components/components.dart';

class WeeklyPage extends StatelessWidget {
  const WeeklyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBarWidget(
          text: '7 days',
          leadingIcon: Icons.arrow_back_ios,
          icon: Icons.calendar_month,
          onTap: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.4,
            decoration: const BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.23,
                  width: size.width,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      LayoutBuilder(
                          builder: (context, constraints) => ShadowContainer(
                              height: constraints * 0.1,
                              width: constraints / 2.3,
                              padding: constraints * 0.42,
                              blurRadius: 25,
                              spreadRadius: 45)),
                      LayoutBuilder(
                          builder: (context, constraints) => ShadowContainer(
                              height: constraints * 0.5,
                              width: constraints / 1.2,
                              padding: constraints * 0.5,
                              blurRadius: 30,
                              spreadRadius: 50)),
                      Positioned(
                        right: size.width * 0.3,
                        top: 15,
                        child: SizedBox(
                          height: size.height * 0.14,
                          width: size.width,
                          child: Image.asset('assets/rain.png'),
                        ),
                      ),
                      Positioned(
                        left: size.width / 2,
                        top: size.height * 0.02,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tommorow',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: Colors.white),
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '20',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!),
                              TextSpan(
                                  text: '/17°',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(fontSize: 30))
                            ])),
                            const Text('Rainy-cloudy')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const WeatherInfoWidget()
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Flexible(child: SizedBox(height: 20)),
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (_, index) => WeeklyInfoCardWidget(
                        weeklyInfo: WeeklyInfo.weeklyInfo[index]),
                    separatorBuilder: (context, index) => const SizedBox(),
                    itemCount: WeeklyInfo.weeklyInfo.length)
              ],
            ),
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/components/custom_appbar_widget.dart';
import '../../data/data.dart';
import 'components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBarWidget(
            text: 'Minsk',
            leadingIcon: Icons.grid_view_rounded,
            icon: Icons.location_on,
            // onPressed: () {}
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const WeatherDisplayWidget(),
              Text('Thunderclouds',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 15),
              const WeatherInfoWidget(),
              const TodayWidget(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: size.height * 0.13,
                child: ListView.builder(
                    itemCount: TodayWeather.weather.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => TodayWeatherCard(
                          index: index,
                          weather: TodayWeather.weather[index],
                        )),
              )
            ],
          ),
        ));
  }
}

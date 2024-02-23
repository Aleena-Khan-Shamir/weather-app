class TodayWeather {
  final int degree;
  final String image;
  final double time;
  TodayWeather({
    required this.degree,
    required this.image,
    required this.time,
  });
  static final List<TodayWeather> weather = [
    TodayWeather(degree: 23, image: 'assets/rain.png', time: 10.00),
    TodayWeather(degree: 21, image: 'assets/thunderstorm.png', time: 11.00),
    TodayWeather(degree: 22, image: 'assets/rain.png', time: 12.00),
    TodayWeather(degree: 23, image: 'assets/night-wind.png', time: 01.00),
  ];
}

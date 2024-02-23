class WeeklyInfo {
  final String day;
  final String image;
  final String weatherCodition;
  final double highTemperature;
  final double lowTemperature;
  WeeklyInfo(
      {required this.day,
      required this.image,
      required this.weatherCodition,
      required this.highTemperature,
      required this.lowTemperature});
  static final List<WeeklyInfo> weeklyInfo = [
    WeeklyInfo(
        day: 'Mon',
        image: 'assets/rain.png',
        weatherCodition: 'Rainy',
        highTemperature: 20,
        lowTemperature: 14),
    WeeklyInfo(
        day: 'Tues',
        image: 'assets/rain.png',
        weatherCodition: 'Rainy',
        highTemperature: 14,
        lowTemperature: 2),
    WeeklyInfo(
        day: 'Wed',
        image: 'assets/thunderstorm.png',
        weatherCodition: 'Storm',
        highTemperature: 20,
        lowTemperature: 14),
    WeeklyInfo(
        day: 'Thurs',
        image: 'assets/night-wind.png',
        weatherCodition: 'Slow',
        highTemperature: 18,
        lowTemperature: 12),
    WeeklyInfo(
        day: 'Fri',
        image: 'assets/thunderstorm.png',
        weatherCodition: 'Thunder',
        highTemperature: 20,
        lowTemperature: 14),
    WeeklyInfo(
        day: 'Sat',
        image: 'assets/rain.png',
        weatherCodition: 'Rainy',
        highTemperature: 20,
        lowTemperature: 14),
    WeeklyInfo(
        day: 'Sun',
        image: 'assets/cloudy.png',
        weatherCodition: 'Cloudy',
        highTemperature: 16,
        lowTemperature: 8),
  ];
}

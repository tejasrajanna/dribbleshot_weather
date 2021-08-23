class Location{
  final String text;
  final String timing;
  final int temperature;
  final String weather;
  final String imageUrl;
  final String imgicon;

  Location({
    required this.text,
    required this.timing,
    required this.temperature,
    required this.weather,
    required this.imageUrl,
    required this.imgicon,
});
}

final locations = [
  Location(
    text: 'New York',
    timing: '10:44 am',
    temperature: 15,
    weather: 'Cloudy',
    imageUrl: 'https://i.ibb.co/df35Y8Q/2.png',
    imgicon: 'wi-cloudy',
  ),
  Location(
    text: 'San Francisco',
    timing: '7:44 am',
    temperature: 6,
    weather: 'Raining',
    imageUrl: 'https://i.ibb.co/7WyTr6q/3.png',
    imgicon: 'wi-rain',
  ),
];
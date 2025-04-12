abstract class Model {
  final String text;
  final String image;

  Model({required this.text, required this.image});
}

class ContinentModel extends Model {
  ContinentModel({required super.text, required super.image});
}

class CountriesModel extends Model {
  CountriesModel({required super.text, required super.image});
}

ContinentModel object1 = ContinentModel(
  text: 'Europe',
  image: 'assets/continents/europe.png',
);
ContinentModel object2 = ContinentModel(
  text: 'Asia',
  image: 'assets/continents/asia.png',
);
ContinentModel object3 = ContinentModel(
  text: 'North America',
  image: 'assets/continents/NAmerica.png',
);
ContinentModel object4 = ContinentModel(
  text: 'South America',
  image: 'assets/continents/sAmerica.png',
);
ContinentModel object5 = ContinentModel(
  text: 'Africa',
  image: 'assets/continents/Africa.png',
);
ContinentModel object6 = ContinentModel(
  text: 'Australia',
  image: 'assets/continents/Australia.png',
);

List<ContinentModel> continentsList = [
  object1,
  object2,
  object3,
  object4,
  object5,
  object6,
];

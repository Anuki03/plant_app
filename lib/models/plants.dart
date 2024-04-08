class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Plant(
      {required this.plantId,
      required this.price,
      required this.category,
      required this.plantName,
      required this.size,
      required this.rating,
      required this.humidity,
      required this.temperature,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  //List of Plants data
  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        price: 22,
        category: 'Outdoor',
        plantName: 'Bonsai Plant',
        size: 'Large',
        rating: 4.5,
        humidity: 34,
        temperature: '45',
        imageURL: 'images/plantone.jpg',
        isFavorated: true,
        decription:
            'Bonsai need direct sunlight from which they make their food. A lack of direct sun will damage them, causing weak and other problems.'
            'They like receive 5-6 hours of sunlight daily, whether inside or outside.',
        isSelected: false),
    Plant(
        plantId: 1,
        price: 11,
        category: 'Indoor',
        plantName: 'Fiddle leaf',
        size: 'Large',
        rating: 4.8,
        humidity: 60,
        temperature: '60 - 80',
        imageURL: 'images/planttwo.jpg',
        isFavorated: false,
        decription:
            'A perfect indoor specimen plant and produces so much oxygen content of your home.',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 18,
        category: 'Indoor',
        plantName: 'Rubber Plant',
        size: 'Large',
        rating: 4.7,
        humidity: 40,
        temperature: '60 - 75',
        imageURL: 'images/plantthree.jpg',
        isFavorated: false,
        decription:
            'The rubber plant is considered auspicious if it is planted inside the house.'
            'Rubber Vastu plants for home are believed to bring financial prosperity, wealth and commercial success.',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 30,
        category: 'Indoor',
        plantName: 'Monstera Plant',
        size: 'Large',
        rating: 4.5,
        humidity: 60,
        temperature: '65 - 85',
        imageURL: 'images/plantoneone.jpg',
        isFavorated: false,
        decription:
            'Monstera Plants make great indoor houseplants and can thrive in various interior temperature and humidity.',
        isSelected: false),
    Plant(
        plantId: 4,
        price: 24,
        category: 'Recommended',
        plantName: 'Snake plant',
        size: 'Large',
        rating: 4.1,
        humidity: 50,
        temperature: '70 - 90',
        imageURL: 'images/plantfour.jpg',
        isFavorated: true,
        decription:
            'Snake plant medicinal benefits include removing indoor air pollutants and helping to filter out impurities such as xylene and ammonia.',
        isSelected: false),
    Plant(
        plantId: 5,
        price: 24,
        category: 'Indoor',
        plantName: 'Cactus Plant',
        size: 'Medium',
        rating: 4.4,
        humidity: 70,
        temperature: '60 - 80',
        imageURL: 'images/plantfive.jpg',
        isFavorated: false,
        decription:
            'Indoor Cactus can boost your productivity, make you breath better, and make you feel happy.'
            'They also make your house feel like  a home and have unique therapeutic properties..',
        isSelected: false),
    Plant(
        plantId: 6,
        price: 19,
        category: 'Indoor',
        plantName: 'Marble Pothos',
        size: 'Large',
        rating: 4.2,
        humidity: 50,
        temperature: '65 - 85',
        imageURL: 'images/plantsix.jpg',
        isFavorated: false,
        decription:
            'Marble Pothos Plant are great indoor hanging plants or placed up high on shelves and '
            'Marble Queen Pothos are a fantastic hanging plants.',
        isSelected: false),
    Plant(
        plantId: 7,
        price: 23,
        category: 'Indoor',
        plantName: 'Fan Palm Plant',
        size: 'Large',
        rating: 4.5,
        humidity: 50,
        temperature: '65 - 80',
        imageURL: 'images/plantseven.jpg',
        isFavorated: false,
        decription:
            'Fan Plams add a different look and  dimensions to the garden.'
            'These are popular indoor tropical plants, but they require a lot of natural light and space to thrive.',
        isSelected: false),
    Plant(
        plantId: 8,
        price: 46,
        category: 'Recommended',
        plantName: 'Aloevera',
        size: 'Tall',
        rating: 4.7,
        humidity: 50,
        temperature: '55 - 85',
        imageURL: 'images/planteight.jpg',
        isFavorated: false,
        decription:
            'Aloevera is a medicinal plant with antioxidant and antibacterial properties.'
            'It benefits can include preventing wrinkles, accelerating wound healing and managing blood sugar.',
        isSelected: false),
  ];

  static List<Plant> getFavoritedPlants() {
    // ignore: no_leading_underscores_for_local_identifiers
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  static List<Plant> addedToCartPlants() {
    // ignore: no_leading_underscores_for_local_identifiers
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}

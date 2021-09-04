class FoodData
{
  String imageUrl;
  int price;
  String foodNameBig;
  String foodNameSmall;
  String description;
  int cal;

  FoodData({
    this.imageUrl,
    this.price,
    this.foodNameBig,
    this.foodNameSmall,
    this.description,
    this.cal
  });
}

List<FoodData> foodDataList = [
  FoodData(
    imageUrl: 'assets/images/image1.png',
    price: 20,
    foodNameBig: 'Kottu',
    foodNameSmall: 'With chicken cheese',
    description: 'A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument.',
    cal:100
  ),
  FoodData(
      imageUrl: 'assets/images/image2.png',
      price: 30,
      foodNameBig: 'Fried rice',
      foodNameSmall: 'With sea food',
      description: 'A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument.',
      cal:250
  ),
  FoodData(
      imageUrl: 'assets/images/image3.png',
      price: 10,
      foodNameBig: 'Noodles',
      foodNameSmall: 'With chicken cheese',
      description: 'A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument.',
      cal:129
  ),
];
import 'package:flutter/material.dart';

class favorite_page extends StatefulWidget {
  const favorite_page({Key? key}) : super(key: key);

  @override
  _favourite_pageState createState() => _favourite_pageState();
}

class _favourite_pageState extends State<favorite_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 216, 201),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(158, 252, 105, 36),
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: EdgeInsets.only(top: 120, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "FAVOURITE COFFEE",
                            style: TextStyle(
                              color: Color.fromARGB(255, 240, 239, 239),
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/coffee.jpg",
                      width: 330,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 250, right: 20),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff0e1446),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.amber,
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  title: Center(child: Text("ABOUT COFFEE")),
                                  content: SingleChildScrollView(
                                    child: Text(
                                        "Coffee, a beverage that has become an integral part of global culture, has a rich and complex history. First discovered in the Ethiopian region in the 9th century, coffee later spread worldwide, becoming one of the most important and sought-after commodities across the globe. In the process, coffee has not only become a drink but also a symbol of culture, social ritual, and even artistic inspiration.The coffee production process begins with the growth of coffee trees in tropical regions such as Latin America, Africa, and Southeast Asia. After harvesting, the coffee fruit, known as cherries, must go through a series of processing stages involving the removal of the skin and the drying of the beans. Subsequently, the coffee beans undergo roasting, a crucial process that imparts the distinctive flavor to the beverage. Each step in the coffee production process has a direct impact on the taste and aroma characteristics produced.The diversity of coffee types also includes the distinction between arabica and robusta, the two main varieties most commonly consumed. Arabica, with its complex flavor and higher acidity, is often considered high-quality coffee. On the other hand, robusta has a stronger and more bitter taste, along with higher caffeine content.Coffee not only satisfies the palate but also provides various health benefits. The antioxidants in coffee have been associated with protection against several chronic diseases, such as heart disease and type 2 diabetes. Furthermore, the caffeine in coffee can enhance immunity and improve concentration.In addition to health aspects, coffee also has significant social impacts. The caffeine in coffee provides stimulation that can uplift mood and alertness, making it a pleasurable companion for many in their daily lives. Coffee shops around the world serve as social meeting places, where ideas are exchanged, and relationships are built.Coffee culture is also reflected in various brewing methods, such as pour-over, espresso, French press, and many more. Each method has its characteristics, creating a unique experience in enjoying coffee. Some coffee enthusiasts even consider brewing as an art, emphasizing precision and perfection in every cup served.Sustainability in the coffee industry is also gaining attention. Many coffee producers are transitioning to sustainable farming practices, ensuring that the environment and local communities are preserved. Certifications such as Fair Trade and Rainforest Alliance are crucial in demonstrating commitment to social justice and the environment.With technological advancements, we can now enjoy coffee through various innovations, such as convenient instant coffee and automatic coffee machines that allow us to create customized drinks at home. However, it cannot be denied that the experience of enjoying coffee in traditional cafes still holds its own charm.Coffee is not just a beverage but a continuously evolving story. From the beans growing in fertile soil to becoming a delightful cup in our hands, coffee invites us to reflect and savor the beauty of a journey that traverses various cultures, flavors, and aromas."),
                                  ),
                                ),
                              );
                            },
                            child: Center(
                              child: Text(
                                "ABOUT",
                                style: TextStyle(
                                  letterSpacing: 2,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 220, 191, 191),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: 710,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2, // Number of photos
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          index == 0
                              ? "assets/images/frappucinofav.jpg"
                              : "assets/images/americanofav.jpg",
                          width: 330,
                          height: 330,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

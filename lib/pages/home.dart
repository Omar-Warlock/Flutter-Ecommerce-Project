import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Falfol,",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                "Delicious Food",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                "Discover and Get Great Food",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[600],
                  fontFamily: 'Dancing Script',
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 20.0),
              Container(margin: EdgeInsets.only(right: 20.0), child: showItem()),
              SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    foodCard("images/newsalad.png", "Veggie Taco Hash", "Fresh and Healthy", "\$22"),
                    foodCard("images/salad4.png", "Mix Veg Salad", "Spicy with Onion", "\$30"),
                    foodCard("images/greekpasta.png", "Greek Pasta Bowl", "Tzatziki & Feta", "\$35"),
                    foodCard("images/newfood.png", "Chickpea Delight", "Mint and Lemon", "\$18"),
                  ],
                ),
              ),

              SizedBox(height: 30.0),
              verticalCard("images/fruit.png", "Fruit Salad", "The Best Fruit Salad with Honey-Lime Dressing ", "\$24"),
              SizedBox(height: 30.0),
              verticalCard("images/lettuce fruit salad.png", "lettuce fruit salad", "Honey Friut Salad", "\$26"),
              SizedBox(height: 30.0),
              verticalCard("images/Goat Cheese Salad.png", "Veggie Taco Hash", "Honey goat cheese", "\$24"),
              SizedBox(height: 30.0),
              verticalCard("images/salad2.png", "Orignal Green Salad", "Crisp veggies with a drizzle of olive oil", "\$24"),
            ],
          ),
        ),
      ),
    );
  }

  Widget foodCard(String image, String title, String desc, String price) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
      },
      child: Container(
        margin: EdgeInsets.all(4),
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image, height: 150, width: 150, fit: BoxFit.cover),
                SizedBox(height: 10.0),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1.2, // لزيادة التميز
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget verticalCard(String image, String title, String desc, String price) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image, height: 120, width: 120, fit: BoxFit.cover),
              SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )),
                  SizedBox(height: 5.0),
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        desc,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      )),
                  SizedBox(height: 10.0),
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        price,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 1.2, // لزيادة التميز
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        filterIcon("images/ice-cream.png", icecream, () {
          icecream = true;
          pizza = salad = burger = false;
          setState(() {});
        }),
        filterIcon("images/pizza.png", pizza, () {
          pizza = true;
          icecream = salad = burger = false;
          setState(() {});
        }),
        filterIcon("images/salad.png", salad, () {
          salad = true;
          icecream = pizza = burger = false;
          setState(() {});
        }),
        filterIcon("images/burger.png", burger, () {
          burger = true;
          icecream = pizza = salad = false;
          setState(() {});
        }),
      ],
    );
  }

  Widget filterIcon(String image, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(8),
          child: Image.asset(
            image,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

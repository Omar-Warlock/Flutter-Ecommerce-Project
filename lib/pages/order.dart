import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2.0,
              child: Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text(
                    "Food Cart",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 3, // Static number of items
                itemBuilder: (context, index) {
                  String imageName;
                  String foodName;
                  String price;

                  // Static data for the three salad items
                  switch (index) {
                    case 0:
                      imageName = 'images/salad2.png';
                      foodName = 'Salad';
                      price = '\$8.00';
                      break;
                    case 1:
                      imageName = 'images/salad3.png';
                      foodName = 'Salad2';
                      price = '\$9.00';
                      break;
                    case 2:
                      imageName = 'images/salad4.png';
                      foodName = 'Salad3';
                      price = '\$7.50';
                      break;
                    default:
                      imageName = 'images/salad.png';
                      foodName = 'Salad';
                      price = '\$0.00';
                      break;
                  }

                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(child: Text("2")), // Static quantity
                            ),
                            SizedBox(width: 20.0),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.asset(
                                imageName, // Load the image from the assets directory
                                height: 90,
                                width: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(foodName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                Text(price, style: TextStyle(fontSize: 14, color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Price", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("\$24.50", style: TextStyle(fontSize: 16)), // Adjusted for three items
                ],
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Center(
                  child: Text(
                    "CheckOut",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

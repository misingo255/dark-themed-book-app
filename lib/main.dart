import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookApp(),
    ));

class BookApp extends StatefulWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  _BookAppState createState() => _BookAppState();
}

class _BookAppState extends State<BookApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff045b62),
      appBar: AppBar(
        backgroundColor: const Color(0xFF072f36),
        elevation: 0.0,
        title: const Text("Book Shelf"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: ListView(
          children: [
            Container(
              height: 40.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Color(0xFF072f36),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "Fiction",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Color(0xFF072f36),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "Adventure",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Color(0xFF072f36),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "Economics",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Color(0xFF072f36),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Top Trending",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child:
                        BookCard("The monk who sold his ferrari", "8.5/10", "assets/1.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: BookCard("The alchemist", "8.3/10", "assets/2.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: BookCard("Rich dad, poor dad", "8.3/10", "assets/4.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: BookCard("The 5 AM club", "8.3/10", "assets/3.jpg"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Recommended Books",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: BookCard("Atomic Habits", "8.5/10", "assets/5.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: BookCard("Think Like A Monk", "8.3/10", "assets/6.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: BookCard("Angels And Demons", "8.3/10", "assets/7.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: BookCard("How To Win Friends And Influence People", "8.3/10", "assets/8.jpg"),
                  ),

                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: BookCard("The Da Vinci Code", "8.3/10", "assets/9.jpg"),
                  ),

                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: BookCard("Sell Like Crazy", "8.3/10", "assets/10.jpg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget BookCard(String Title, String Rate, String imgPath) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Card(
            elevation: 0.0,
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
              width: 130.0,
              height: 160.0,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            Title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            Rate,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}

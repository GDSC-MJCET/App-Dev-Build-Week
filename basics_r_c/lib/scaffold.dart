import "package:basics_r_c/buttons.dart";
import "package:basics_r_c/container.dart";
import "package:basics_r_c/image.dart";
import "package:basics_r_c/textf.dart";
import "package:basics_r_c/icons.dart";
import "package:basics_r_c/scroll.dart";
import "package:basics_r_c/text.dart";
import "package:basics_r_c/r&c.dart";
import "package:flutter/material.dart";

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({super.key});

  @override
  State<ScaffoldPage> createState() => ScaffoldPageState();
}

class ScaffoldPageState extends State<ScaffoldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 190, 190, 190),
        title: const Text("Appbar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Basics(),
                      ),
                    );
                  },
                  child: const Text(
                    "R&C",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScrollPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Scroll",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TextPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Text",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IconsPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Icons",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TextFPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "TextFields",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ButtonsPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Button",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContainerPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Container",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagePage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Image",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}

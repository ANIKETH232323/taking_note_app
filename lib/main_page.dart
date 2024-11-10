import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<String> dropdownOptions = ['Date Modified', 'Date Created'];

  late String dropdownValue = dropdownOptions.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.circleUser)),
              ),
              const Text(
                "All notes",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.arrowDown)),
              ),
              DropdownButton(
                  value: dropdownValue,
                  items: dropdownOptions
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  }),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.bars)),
            ],
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 40,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
                itemBuilder: (contex, int index) {
                  return Container(
                    child: Column(
                      children: [
                        const Text("This is going to note title"),
                        Row(
                          children: [
                            Container(
                              child: const Text("First Chip"),
                            )
                          ],
                        ),
                        const Text("Show Some Contain"),
                        Row(
                          children: [
                            const Text("02 Nov,2024"),
                            IconButton(
                                onPressed: () {},
                                icon: const FaIcon(FontAwesomeIcons.trash))
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

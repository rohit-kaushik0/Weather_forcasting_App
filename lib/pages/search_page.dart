import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final Color backgroundColor; // Receive background color from HomePage

  const SearchPage({super.key, required this.backgroundColor});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.backgroundColor, // Set AppBar color
        title: const Text('Search City'),
      ),
      body: Container(
        color: widget.backgroundColor, // Set background color
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'City Name',
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0), // Rounded corners
                  borderSide: const BorderSide(
                    color: Colors.black, // Bold black color
                    width: 2.0, // Border width
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Rounded corners on focus
                  borderSide: const BorderSide(
                    color: Colors.black, // Bold black color on focus
                    width: 2.0, // Border width
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      30.0), // Rounded corners when enabled
                  borderSide: const BorderSide(
                    color: Colors.black, // Bold black color when enabled
                    width: 2.0, // Border width
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _controller.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    176, 21, 21, 22), // Background color of the button
                minimumSize: const Size(10, 40), // Button width and height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: const Text(
                'Search',
                style: TextStyle(color: Color.fromARGB(255, 227, 231, 235)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

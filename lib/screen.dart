import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<String> topics = [
    'Startup',
    'Industry Expert',
    'Compensation',
    'Opportunities',
    'Y Combinator',
    'Layoff',
    'EMBA Confession',
    'Private Equity',
    'Fund Raising',
    'Venture Capital',
    'Industry Expert',
    'Compensation',
    'Opportunities',
    'Y Combinator',
    'Industry Expert',
    'Compensation',
  ];

  List<bool> selected = List.generate(16, (index) => false); // Initialize selected list

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height - 100, // Adjust the height as needed
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  _headertxt1(context),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                    child: Text(
                      'Select up to 3 topics to get started. You can change anytime from your profile',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 16,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 3.06, // Adjust this value to set the aspect ratio
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Toggle the selected state of the item
                          setState(() {
                            selected[index] = !selected[index];
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: selected[index] ? Color.fromARGB(255, 54, 188, 181) : Colors.grey,
                                  width: 2,
                                ),
                                color: selected[index] ? Color.fromARGB(255, 54, 188, 181).withOpacity(0.1) : Colors.transparent,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Center(
                                child: Text(
                                  topics[index],
                                  style: TextStyle(color: selected[index] ? Colors.black : Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.check,
                                color: selected[index] ? Color.fromARGB(255, 54, 188, 181) : Colors.white,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20), // Add some spacing between GridView and button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 80), // Adjust horizontal padding
                      backgroundColor: Color.fromARGB(255, 54, 188, 181),
                    ),
                    child: SizedBox(
                      width: 200, // Set the width of the button
                      child: Center(
                        child: const Text(
                          "Confirm",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _headertxt1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back
            Navigator.pop(context);
          },
        ),
        Text(
          "Pick your interest",
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(Screen());
}

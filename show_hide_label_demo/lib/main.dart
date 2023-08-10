import 'package:flutter/material.dart';

// main function-> control flow begins here
void main() {
  // calling materailapp
  runApp(const ShowHideLabelApp());
}

// material app class containing theming and home screen
class ShowHideLabelApp extends StatelessWidget {
  // default constructor
  const ShowHideLabelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title when the app is in recent tab
      title: 'Show/Hide Label Demo',
      // choose theme as you like
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home screen
      home: const ShowHideLabelDemo(),
    );
  }
}

// main screen or home screen
class ShowHideLabelDemo extends StatefulWidget {
  // default constructor
  const ShowHideLabelDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShowHideLabelDemoState createState() => _ShowHideLabelDemoState();
}

class _ShowHideLabelDemoState extends State<ShowHideLabelDemo> {
  // This boolean variable controls whether the label is currently shown or hidden.
  // When _showLabel is true, the label will be displayed.
  // When _showLabel is false, the label will be hidden.
  bool _showLabel = true;

  // This function is called when the "Toggle Label" button is pressed.
  // It toggles the visibility of the label by flipping the value of _showLabel.
  void _toggleLabelVisibility() {
    setState(() {
      _showLabel = !_showLabel; // Flip the value to show or hide the label.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show/Hide Label Demo'),
      ),
      body: Center(
        child: Column(
          // parent colums
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 1> Label
            // This code conditionally renders either a Text widget containing the label
            // or an empty SizedBox based on the value of _showLabel.
            // When _showLabel is true, the label is displayed with a specific style.
            // When _showLabel is false, an empty SizedBox with a fixed height is used to hide the label's space.
            _showLabel
                ? const Text(
                    'This is a label that can be hidden and shown.',
                    style: TextStyle(fontSize: 18),
                  )
                : const SizedBox(
                    height: 20,
                  ),
            // 2> space between label and button
            const SizedBox(
              height: 20,
            ),
            // 3> Button
            ElevatedButton(
              onPressed: _toggleLabelVisibility,
              child: const Text('Toggle Label'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


/* PÉLDA KÓD */
class LetsShopButton extends StatefulWidget {
  const LetsShopButton({super.key});

  @override
  State<LetsShopButton> createState() => _LetsShopButtonState();
}

class _LetsShopButtonState extends State<LetsShopButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              elevation: 3,
              foregroundColor: Colors.amber,
              backgroundColor: Colors.grey[200],
              side: const BorderSide(
                width: 2.0,
                color: Colors.amber,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Let's shop",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

/* PÉLDA KÓD */
class LetsShopButton extends StatelessWidget {
  LetsShopButton(this._onTap);

  final void Function(int index) _onTap;

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
            onPressed: () => _onTap(1),
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

import 'package:flutter/material.dart';

class QuantityButton extends StatefulWidget {
  const QuantityButton({super.key});

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 2, color: Theme.of(context).colorScheme.primary)),
      width: 100,
      child: Row(
        children: [
          SizedBox(
            height: 30,
            width: 35,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ),
              child: const Text('-'),
            ),
          ),
          const Expanded(
              child: Text(
            "0",
            textAlign: TextAlign.center,
          )),
          SizedBox(
            height: 30,
            width: 35,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
              child: const Text('+'),
            ),
          ),
        ],
      ),
    );
  }
}

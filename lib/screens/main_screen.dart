import 'package:flutter/material.dart';
import 'package:shopping_map/widgets/quantity_button.dart';
import '../widgets/lets_shop_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen(this._callback);

  final void Function(int index) _callback;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 64.0,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Text(
                'Grocery list',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34.0,
                  color: Color(0xFF474D53),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: const BorderSide(color: Colors.white, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: const BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: const BorderSide(color: Colors.white, width: 1),
                  ),
                  hintText: 'Add something to your list...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[300]),
              cursorColor: Colors.amber,
            ),
          ),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            children: const <Widget>[
              ListTile(
                title:
                    Text("Anchor", style: TextStyle(color: Color(0XFF474D53))),
                leading: Icon(Icons.anchor, color: Color(0xFF474D53)),
                trailing: QuantityButton(),
              ),
              ListTile(
                title:
                    Text("Alarm", style: TextStyle(color: Color(0XFF474D53))),
                leading: Icon(Icons.alarm, color: Color(0xFF474D53)),
                trailing: QuantityButton(),
              ),
              ListTile(
                title: Text("Restaurant",
                    style: TextStyle(color: Color(0XFF474D53))),
                leading: Icon(Icons.restaurant, color: Color(0xFF474D53)),
                trailing: QuantityButton(),
              ),
            ],
          ),
          const SizedBox(height: 200),
          LetsShopButton(_callback),
        ],
      ),
    );
  }
}

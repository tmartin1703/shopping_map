import 'package:flutter/material.dart';
import 'package:shopping_map/widgets/quantity_button.dart';
import '../widgets/lets_shop_button.dart';

class MainScreen extends StatelessWidget {
  MainScreen(this._callback);

  final void Function(int index) _callback;
  final searchFieldText = TextEditingController();

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
              controller: searchFieldText,
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
                  hintText: 'Add something...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: GestureDetector(
                      onTap: () => searchFieldText.clear(),
                      child: const Icon(Icons.clear)),
                  filled: true,
                  fillColor: Colors.grey[300]),
            ),
          ),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            children: const <Widget>[
              ListTile(
                title:
                    Text("Bread", style: TextStyle(color: Color(0XFF474D53))),
                leading: Icon(Icons.breakfast_dining, color: Color(0xFF474D53)),
                trailing: QuantityButton(),
              ),
              ListTile(
                title:
                    Text("Apple", style: TextStyle(color: Color(0XFF474D53))),
                leading: Icon(Icons.apple, color: Color(0xFF474D53)),
                trailing: QuantityButton(),
              ),
              ListTile(
                title: Text("Milk", style: TextStyle(color: Color(0XFF474D53))),
                leading: Icon(Icons.local_drink, color: Color(0xFF474D53)),
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

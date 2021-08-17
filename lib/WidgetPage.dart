import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget {
  const WidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.orange,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.green,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.orange,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.green,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.orange,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.green,
                height: 150,
                width: 150,
              )
            ],
          ),
          Container(
            color: Colors.blue,
            height: 150,
            width: 150,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.red,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.orange,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.green,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.orange,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.green,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.orange,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.green,
                  height: 150,
                  width: 150,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

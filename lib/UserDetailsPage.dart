import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  UserDetails({Key? key, this.username, this.age, this.favouriteColor}) : super(key: key);
  String? username;
  String? age;
  String? favouriteColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $username', style: Theme.of(context).textTheme.headline4),
            Text('age: $age', style: Theme.of(context).textTheme.headline4),
            Text('Favourite Color: $favouriteColor', style: Theme.of(context).textTheme.headline4),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_workshop/UserDetailsPage.dart';

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({Key? key}) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  String inputText = 'sample';

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController colorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  hintText: 'Enter name',
                icon: Icon(Icons.drive_file_rename_outline)
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: ageController,
              decoration: InputDecoration(
                  hintText: 'Enter age',
                icon: Icon(Icons.person)
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: colorController,
              decoration: InputDecoration(
                  hintText: 'Favourite color',
                icon: Icon(Icons.color_lens)
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => UserDetails(
                          username: nameController.text,
                          age: ageController.text,
                          favouriteColor: colorController.text,
                        )));
                print(inputText);
              },
              child: Text('Submit')),
          Text(
            inputText,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.green),
          ),
          ListTile(
            title: Text('Item 1'),
            subtitle: Text('Item description'),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: Icon(Icons.shopping_bag),
            onTap: () {
              print('ListTile is clicked');
            },
          ),
          ExpansionTile(
            title: Text('Expandable Item'),
            subtitle: Text('Expandable Item description'),
            children: [
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              )
            ],
          )
        ],
      ),
    );
  }
}

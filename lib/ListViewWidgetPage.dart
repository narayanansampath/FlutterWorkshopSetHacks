import 'package:flutter/material.dart';

class ListViewWidgetPage extends StatelessWidget {
  ListViewWidgetPage({Key? key}) : super(key: key);
  List<int> numbers = List<int>.generate(20, (index) => index + 1);
  List<String> listOfImages = [
    'https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ',
    'https://i.picsum.photos/id/1/5616/3744.jpg?hmac=kKHwwU8s46oNettHKwJ24qOlIAsWN9d2TtsXDoCWWsQ',
    'https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
    'https://i.picsum.photos/id/100/2500/1656.jpg?hmac=gWyN-7ZB32rkAjMhKXQgdHOIBRHyTSgzuOK6U0vXb1w',
    'https://i.picsum.photos/id/1000/5626/3635.jpg?hmac=qWh065Fr_M8Oa3sNsdDL8ngWXv2Jb-EE49ZIn6c0P-g'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 1,
      separatorBuilder: (context, index) => Divider(
        height: 5,
        color: Colors.red,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.asset('asset/image1.jpg'),
            Image.asset('asset/image2.jpg'),
          ],
        );
        /*return ListTile(
            title: Text(numbers[index].toString()),
            subtitle: Text('Item description'),
            trailing: Icon(Icons.arrow_forward_ios),
          );*/
      },
    );
  }
}

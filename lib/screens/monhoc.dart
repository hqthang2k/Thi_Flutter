import 'package:flutter/material.dart';
import 'package:quanlyhocba/items/monhoc_item.dart';
import 'package:quanlyhocba/models/monhoc_model.dart';

class MonhocScreen extends StatelessWidget {
  const MonhocScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Môn Học"),
        centerTitle: true,
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
        ),
        children: DUMMY_DATA.map((item) => MonhocItem(item.id, item.title)).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],

      ),
    );
  }
}

const DUMMY_DATA = [
  Monhoc('7.8', "Toán"),
  Monhoc('8.9', "Ngữ Văn"),
  Monhoc('9.1', "Lịch sử"),
  Monhoc('6.7', "Tin Học"),
  Monhoc('7.7', "Địa lý"),
  Monhoc('9.9', "Hóa Học"),
  Monhoc('10', "Vật lý"),
  Monhoc('5', "Thể dục"),
  Monhoc('8.0', "Sinh học"),
];
import 'package:flutter/material.dart';

class SuadiemScreen extends StatelessWidget {
  const SuadiemScreen() : super();

  void buttonClick(){
    print("Đã Lưu");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toán', style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text('Nhập điểm muốn sửa',style: TextStyle(fontSize: 35),),
            SizedBox(height: 30,),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: 25
              ),
              decoration: InputDecoration(
                labelText: "Điểm Học kỳ 1",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                  fontSize: 25
              ),
              decoration: InputDecoration(
                  labelText: "Điểm Học kỳ 2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                  fontSize: 25
              ),
              decoration: InputDecoration(
                  labelText: "Điểm trung bình",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 100,),
                FlatButton(
                    onPressed: buttonClick,
                    child: Text("Lưu",style: TextStyle(fontSize: 25),),
                    color: Colors.blue,
                    highlightColor: Colors.red,
                    height: 50,
                ),
                SizedBox(width: 30,),
                FlatButton(
                  onPressed: buttonClick,
                  child: Text("Hủy",style: TextStyle(fontSize: 25),),
                  color: Colors.red,
                  highlightColor: Colors.red,
                  height: 50,
                ),
              ],
            )
          ],
        ),
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

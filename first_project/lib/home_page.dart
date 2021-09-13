import 'package:first_project/app-controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return homePageState();
  }
}

// ignore: camel_case_types
class homePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity, //Preenche todo espaço disponível
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // alinhamento principal
          children: [
            Text('Contador: $counter'),
            Container(
              height: 10,
            ), // define um espaçamento entre um objeto e outro
            CustomSwitch(),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // Espaço em volta
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.dartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}

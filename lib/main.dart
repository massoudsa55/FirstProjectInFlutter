import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Messaoud Benkouider',
        //theme: ThemeData.dark(),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'AppBar from Messaoud',
                style: TextStyle(fontSize: 30),
              ),
            ),
            body: const Home()));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.center,
          color: Colors.grey,
          child: Column(
            children: const <Widget>[
              ResizeRowTitle(),
              ResizeRowData(),
              GetImageAsset(),
              AddButton(),
            ],
          )),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 100,
      width: 600,
      child: ElevatedButton(
          onPressed: () {
            onPressed(context);
          },
          style: const ButtonStyle(
            alignment: Alignment.center,
          ),
          child: const Text(
            'Submit To Messaoud',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 30,
            ),
          )),
    );
  }

  void onPressed(BuildContext context) {
    // action
    var alertDialog = const AlertDialog(
      title: Text("Submited successfully"),
      content: Text("Welcom Ms. Messaoud"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}

class GetImageAsset extends StatelessWidget {
  const GetImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('images/my_photo.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}

class ResizeRowTitle extends StatelessWidget {
  const ResizeRowTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: Row(
          children: const <Widget>[
            Expanded(
                child: Text(
              "First Name",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 22,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            )),
            Expanded(
                child: Text(
              "Last Name",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 22,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            )),
            Expanded(
                child: Text(
              'Age',
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 22,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            )),
          ],
        ));
  }
}

class ResizeRowData extends StatelessWidget {
  const ResizeRowData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        alignment: Alignment.center,
        child: Row(
          children: const <Widget>[
            Expanded(
                child: Text(
              "Mssaoud",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  color: Colors.black38),
            )),
            Expanded(
                child: Text(
              "Benkouider",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  color: Colors.black38),
            )),
            Expanded(
                child: Text(
              '29',
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  color: Colors.black38),
            )),
          ],
        ));
  }
}

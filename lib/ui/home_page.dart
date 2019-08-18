import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:huehome/data/room_repository.dart';
import 'package:huehome/ui/room_list_tile.dart';
import 'package:huehome/ui/scenes_list_tile.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _roomList(),
              _scenesHeader(),
              _scenesList(),
            ],
          ),
        ),
        bottomNavigationBar: _bottomNavBar());
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        widget.title,
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.settings,
            color: Colors.black87,
          ),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.add,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget _roomList() {
    return Flexible(
      flex: 3,
      fit: FlexFit.loose,
      child: ListView(
        children: <Widget>[
          ...Provider.of<RoomRepository>(context).getRooms().map((r) => RoomListTile(
                room: r,
              ))
        ],
      ),
    );
  }

  Widget _scenesHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      child: Text(
        "HOME SCENES",
        style: Theme.of(context).textTheme.subhead,
      ),
    );
  }

  Widget _scenesList() {
    return Flexible(
      flex: 1,
      fit: FlexFit.loose,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            ScenesListTile(colors: [Colors.blueAccent, Colors.lightBlue, Colors.deepPurpleAccent], text: "BlueSea"),
            ScenesListTile(colors: [Colors.deepOrangeAccent, Colors.deepOrange, Colors.yellow], text: "Sunset"),
            ScenesListTile(colors: [Colors.lightGreen, Colors.green], text: "Tropic"),
            ScenesListTile(colors: [Colors.blueGrey, Colors.blue], text: "Industrial"),
            ScenesListTile(colors: [Colors.blueAccent, Colors.lightBlue, Colors.deepPurpleAccent], text: "BlueSea2"),
            ScenesListTile(colors: [Colors.deepOrangeAccent, Colors.deepOrange, Colors.yellow], text: "Sunset2"),
            ScenesListTile(colors: [Colors.lightGreen, Colors.green], text: "Tropic2"),
            ScenesListTile(colors: [Colors.blueGrey, Colors.blue], text: "Industrial2"),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black87,
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          title: Text("Events"),
          icon: Icon(Icons.schedule),
        ),
        BottomNavigationBarItem(
          title: Text("Home"),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text("History"),
          icon: Icon(Icons.list),
        ),
      ],
    );
  }
}

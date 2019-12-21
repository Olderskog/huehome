import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:huehome/ui/pages/activity_page.dart';
import 'package:huehome/ui/pages/events_page.dart';
import 'package:huehome/ui/pages/room_page.dart';

class MainPage extends StatefulWidget {
  final String title;

  MainPage({Key key, this.title});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPosition = 1;

  PageController _pageController = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: _appBar(),
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          itemBuilder: (context, position) {
            switch (position) {
              case 0:
                {
                  return EventsPage(
                    title: "Events",
                  );
                }
                break;
              case 1:
                {
                  return RoomPage(title: "Home");
                }
                break;
              case 2:
                {
                  return ActivityPage(title: "Activity");
                }
                break;
              default:
                {
                  return Text("Woops there seems to be something wrong with the index! $position");
                }
            }
          },
          itemCount: 3,
          onPageChanged: (pos) {
            setState(() {
              _currentPosition = pos;
            });
          },
        ),
      ),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      currentIndex: _currentPosition,
      onTap: (pos) {
        _pageController.animateToPage(pos, duration: Duration(milliseconds: 500), curve: Curves.easeOutBack);
        setState(() {
          _currentPosition = pos;
        });
      },
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

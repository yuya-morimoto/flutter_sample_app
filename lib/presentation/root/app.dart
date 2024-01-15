import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_app/core/utils/os_util.dart';

/// アプリケーションのメインコンテンツ部分のルートウィジェット
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return OSUtil.iosOrOther(_iosScaffold(), _otherScaffold());
  }

  Widget _iosScaffold() {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.house,
              size: 24,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.house,
              size: 24,
            ),
            label: 'Home'),
      ]),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return Center(
              child: Text('Content of tab $index'),
            );
          },
        );
      },
    );
  }

  Widget _otherScaffold() {
    return const Scaffold(body: BottomNavigationBarExample());
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Scaffold(
      appBar: AppBar(title: Text('BottomNavigationBar')),
      body: const Text(
        'Index 0: Home',
        style: optionStyle,
      ),
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

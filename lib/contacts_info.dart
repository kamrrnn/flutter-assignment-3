import 'package:flutter/material.dart';

class ContactsInfo extends StatefulWidget {
  const ContactsInfo({super.key});

  @override
  State<ContactsInfo> createState() => _ContactsInfoState();
}

class _ContactsInfoState extends State<ContactsInfo> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    Column(children: const [
      SizedBox(height: 24),
      Text('Name: Sabahat'),
      SizedBox(height: 24),
      Text('Email: Sabahatfatima886@gmail.com'),
      SizedBox(height: 24),
      Text('Date of Birth: 13-Feb-1999'),
      SizedBox(height: 24),
      Text('Office: Supra Factory'),
    ]),
    Column(children: const [
      SizedBox(height: 24),
      Text('Name: Sabahat'),
      SizedBox(height: 24),
      Text('Email: Sabahatfatima886@gmail.com'),
      SizedBox(height: 24),
      Text('Date of Birth: 13-Feb-1999'),
      SizedBox(height: 24),
      Text('Office: Supra Factory'),
    ]),
    Column(children: const [
      SizedBox(height: 24),
      Text('Name: Sabahat'),
      SizedBox(height: 24),
      Text('Email: Sabahatfatima886@gmail.com'),
      SizedBox(height: 24),
      Text('Date of Birth: 13-Feb-1999'),
      SizedBox(height: 24),
      Text('Office: Supra Factory'),
    ]),
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
        title: Text('Contacts Information'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
      ),
    );
  }
}

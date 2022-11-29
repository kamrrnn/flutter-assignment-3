import 'package:assignment_3/contacts_info.dart';
import 'package:assignment_3/new_contact.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Map<String, dynamic> someMapVariable;
  HomePage({super.key, required this.someMapVariable});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 3'),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Contacts'),
              Tab(text: 'Groups'),
            ],
          ),
        ),
        drawer: Drawer(
          child: Center(
              child: Column(
            children: [
              ListTile(
                title: Text('Sabahat Fatima'),
                subtitle: Text('Mobile Application Development'),
                leading: CircleAvatar(child: Text('SF')),
                trailing: Icon(Icons.done_all_outlined),
              ),
            ],
          )),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Sabahat Fatima'),
                    subtitle: Text('Mobile Application Development'),
                    leading: CircleAvatar(
                        // child: Text('SF'),
                        backgroundImage: NetworkImage(
                            'https://i.ytimg.com/vi/0bNewEtM2Wk/maxresdefault.jpg')),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactsInfo()));
                    },
                  );
                },
              ),
            ),
            Center(
              child: Text('Groups'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewContact(),
                ));
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

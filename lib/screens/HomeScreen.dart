import 'package:flutter/material.dart';
import 'package:ras_clear/model/Subject.dart';
import 'package:ras_clear/screens/VideoList.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Subject> subjectlist;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (subjectlist == null) {
      subjectlist = List<Subject>();
      subjectlist.add(Subject('RAJASTHAN HISTORY', 14));
      subjectlist.add(Subject('RAS SCIENCE', 59));
      subjectlist.add(Subject('RAJASTHAN GEOGRAPHY', 33));
      subjectlist.add(Subject('CHRONOLOGY AND OTHER GUIDES DISCUSSION', 5));
      subjectlist.add(Subject('CURRENT AFFAIRS', 16));
      subjectlist.add(Subject('LIVE CLASSES VIDEO', 10));
      setState(() {
        this.count = subjectlist.length;
      });
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Dart Playlist',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: getNoteListView());
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.play_arrow),
              ),
              title: Text(
                'Subject = '+ this.subjectlist[position].subjectName,
                style: titleStyle,
              ),
              subtitle: Text(
                'Total Videos = '+ this.subjectlist[position].videocount.toString(),
                style: titleStyle,
              ),
              onTap: () {
                debugPrint('ListTile Tapped');
                navigateToDetail(this.subjectlist[position].subjectName);
              },
            ),
          );
        });
  }

  void navigateToDetail(String title) async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return VideoList(title);
    }));

    if (result == true) {
//      updateListView();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:ras_clear/model/playlist.dart';

class VideoItem extends StatefulWidget {
  final PlayList playList;

  VideoItem(this.playList);

  @override
  _VideoitemState createState() => _VideoitemState(this.playList);
}

class _VideoitemState extends State<VideoItem> {
  final PlayList playList;

  _VideoitemState(this.playList);

  Widget get videoCard {
    return Card(
        child:
            Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                leading: const Icon(Icons.album),
                title: Text(playList.ListTitle),
              ),
              ButtonTheme.bar(
                  child: ButtonBar(children: <Widget>[
                    FlatButton(
                      child: const Text('Thumb up'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: const Text('Thumb down'),
                      onPressed: () {},
                    )
                  ]))

          ],
        )

         );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: videoCard,
    );
  }
}

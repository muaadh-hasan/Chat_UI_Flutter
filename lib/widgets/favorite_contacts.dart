import 'package:chat_ui_mhr/models/message_model.dart';
import 'package:chat_ui_mhr/screens/chat_app.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Favorite Contacts',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                      ),
                      iconSize: 30,
                      color: Colors.blueGrey,
                      onPressed: () {})
                ],
              ),
            ),
            Container(
                height: 120,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 10.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: favorites.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  ChatScreen(user: favorites[index]))),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage(favorites[index].imageUrl),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              favorites[index].name,
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}

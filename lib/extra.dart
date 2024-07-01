import 'package:flutter/material.dart';

class Extra extends StatelessWidget {
  const Extra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.notifications_active),
            SizedBox(width: 10,),
            Icon(Icons.person),
            SizedBox(width: 10,)
          ],
        ),
        bottom: PreferredSize(preferredSize: Size.fromHeight(30),
            child: TextFormField(
              decoration: InputDecoration(
                suffix: Icon(Icons.search),
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(2),
                  borderSide: BorderSide(color: Colors.black87, width: 2)
                ))
              ),
            ))

    );
  }
}

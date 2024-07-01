import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  final String Btname;
  final VoidCallback ontap;
  final Color Btcolor;
  const MyButton({super.key, required this.icon, required this.Btname, required this.ontap,required this.Btcolor });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Btcolor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(
              icon,
              color: Colors.white60,
            ),
            SizedBox(width: 10),
            Text(
              Btname,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white60,
              ),
            )
          ],
        ),
      ),
    );
  }
}

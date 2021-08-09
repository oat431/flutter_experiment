import 'package:flutter/material.dart';
import 'package:experiment1/components/topbar.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:experiment1/screen/detail_chat_screen.dart';

class Home extends StatelessWidget {
  static String tag = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        screen_name: "Home page",
        leading_part: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () => {
            SmartDialog.show(
              alignmentTemp: Alignment.topCenter,
              clickBgDismissTemp: true,
              widget: Container(
                constraints: BoxConstraints(
                  maxHeight: 800,
                  maxWidth: 600,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20,
                      spreadRadius: 100,
                    )
                  ],
                ),
                child: ProductChatScreen(),
              ),
            )
          },
        ),
      ),
    );
  }
}

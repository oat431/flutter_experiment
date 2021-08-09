import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:experiment1/components/detail_chat.dart';
import 'package:experiment1/components/detail_confirm_dialog.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class ProductChatScreen extends StatefulWidget {
  static String tag = 'ProductChatScreen';
  @override
  ProductChatScreenState createState() => ProductChatScreenState();
}

class ProductChatScreenState extends State<ProductChatScreen> {
  static var li = [
    DetailChatSender('I love your suit'),
    DetailChatSender('Can I join your?'),
    DetailChatReceiver('Yes, you can'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => {SmartDialog.dismiss()},
          child: Image.asset('assets/icons/Arrow - Left 2_1.png'),
        ),
        title: DetailChatTitle('Sahachan T.'),
        actions: [
          Image.asset('assets/icons/Notification_1.png'),
          Image.asset('assets/icons/tel_1.png'),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [for (var i in li) i],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              tooltip: 'Send message',
              icon: Image.asset('assets/icons/Send_1.png'),
              onPressed: () {},
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              tooltip: 'Send request',
              icon: Image.asset('assets/icons/up-arrow-1.png'),
              onPressed: () => {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierColor: Colors.white10,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                      child: ListBody(
                        children: [DetailConfirm()],
                      ),
                    );
                  },
                  animationType: DialogTransitionType.sizeFade,
                  curve: Curves.linear,
                ),
              },
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              tooltip: 'Call',
              icon: Image.asset('assets/icons/tel_3.png'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

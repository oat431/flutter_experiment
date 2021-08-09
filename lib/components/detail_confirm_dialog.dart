import 'package:flutter/material.dart';
import 'package:experiment1/screen/detail_chat_screen.dart';

class DetailConfirm extends StatelessWidget {
  final String _arrowPic = 'assets/icons/up-arrow-3.png';
  final String _acceptPic = 'assets/icons/accept.png';
  final String _declinePic = 'assets/icons/denine.png';
  Widget _mark(String path, String msg) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          Image.asset(_arrowPic),
          SizedBox(height: 10),
          Text("Asking request sent"),
          SizedBox(height: 20),
          Image.asset(
            path,
            width: 60,
            height: 60,
          ),
          SizedBox(height: 20),
          Text(msg),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _showMark(String path, String msg) {
    return Column(
      children: [
        Image.asset(
          path,
          width: 60,
          height: 60,
        ),
        SizedBox(height: 10),
        Text(
          msg,
          style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              decoration: TextDecoration.none),
        ),
      ],
    );
  }

  _markGiven(String path, String msg) {
    ProductChatScreenState.li.add(Container());
  }

  Widget _alertComponent(
      String path, String msgOnDialog, String msgOnChat, BuildContext context) {
    return GestureDetector(
      onTap: () => {
        _markGiven(path, msgOnChat),
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ProductChatScreen(),
          ),
          (e) => false,
        ),
      },
      child: Container(
        child: _showMark(
          path,
          msgOnDialog,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: 200.0,
      child: Column(
        children: [
          Image.asset(_arrowPic),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                "Sahachan T.'s ask for join in \n หาคนซื้อเสื้อผ้า...",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontFamily: 'FC-Minimal-Regular',
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _alertComponent(_acceptPic, "Accept", "Accepted", context),
              SizedBox(
                width: 40,
              ),
              _alertComponent(_declinePic, "Decline", "Declined", context)
            ],
          ),
        ],
      ),
    );
  }
}

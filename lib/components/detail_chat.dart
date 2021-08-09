import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_9.dart';

class DetailChatTitle extends StatelessWidget {
  String _title;
  DetailChatTitle(String title) : this._title = title;
  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }
}

class DetailChatReceiver extends StatelessWidget {
  String _receiverMessage;
  DetailChatReceiver(String receiverMessage)
      : this._receiverMessage = receiverMessage;
  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      clipper: ChatBubbleClipper9(type: BubbleType.receiverBubble),
      backGroundColor: Color(0xffE7E7ED),
      margin: EdgeInsets.only(top: 20),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(
          _receiverMessage,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
    ;
  }
}

class DetailChatSender extends StatelessWidget {
  String _sendMessage;
  DetailChatSender(String sendMessage) : this._sendMessage = sendMessage;
  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      clipper: ChatBubbleClipper9(type: BubbleType.sendBubble),
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(top: 20),
      backGroundColor: Colors.blue,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(
          _sendMessage,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

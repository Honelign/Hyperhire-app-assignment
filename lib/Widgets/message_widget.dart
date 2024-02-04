import 'package:flutter/material.dart';

import 'package:hyperhire_app/Widgets/recieverChatView.dart';
import 'package:hyperhire_app/Widgets/senderChatView.dart';

class MessageCardWidget extends StatelessWidget {
  final String username;
  final String usermessage;
  final bool isMine;
  final String userday;
  final int useronline;
  final bool userisPhoto;
  final String userphotoUrl;
  final bool userisActive;

  const MessageCardWidget({
    Key? key,
    required this.username,
    required this.usermessage,
    required this.isMine,
    required this.userday,
    required this.useronline,
    required this.userisPhoto,
    required this.userphotoUrl,
    required this.userisActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Align(
        alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
        child: !isMine
            ? RecieveChatView(
                photoUrl: userphotoUrl,
                name: username,
                message: usermessage,
                day: userday,
                isActive: userisActive,
              )
            : SenderChatView(message: usermessage),
      ),
    );
  }
}

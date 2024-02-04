import 'package:flutter/material.dart';
import 'package:hyperhire_app/Widgets/message_widget.dart';

class ChatListView extends StatelessWidget {
  final List<MessageCardWidget> messages;
  final void Function()? sendMessage;
  final ScrollController scrollController;
  const ChatListView({
    super.key,
    required this.messages,
    this.sendMessage,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListView.builder(
        itemCount: messages.length,
        controller: scrollController,
        itemBuilder: (context, index) {
          return messages[index];
        },
      ),
    );
  }
}

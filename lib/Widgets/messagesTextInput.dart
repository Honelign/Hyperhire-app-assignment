import 'package:flutter/material.dart';
import 'package:hyperhire_app/utilities/constants.dart';

class MessageTextInput extends StatelessWidget {
  final FocusNode focusNode;
  final TextEditingController controller;
  final void Function()? sendMessage;

  const MessageTextInput({
    super.key,
    required this.focusNode,
    required this.controller,
    this.sendMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.strokeColor),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              focusNode: focusNode,
              cursorWidth: 1,
              cursorRadius: const Radius.circular(100),
              style: const TextStyle(
                color: AppColors.grayTextColor,
              ),
              minLines: 1,
              maxLines: 10,
              controller: controller,
              decoration: const InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          // Spacer(),
          GestureDetector(
            onTap: sendMessage,
            child: CircleAvatar(
              backgroundColor:
                  focusNode.hasFocus ? AppColors.pink : AppColors.iconBgColor,
              radius: 14,
              child: const Center(
                child: Icon(
                  Icons.arrow_upward,
                  color: Colors.black,
                  size: 15,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

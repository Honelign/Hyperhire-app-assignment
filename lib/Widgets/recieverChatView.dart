import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hyperhire_app/utilities/constants.dart';

class RecieveChatView extends StatelessWidget {
  final String photoUrl;
  final String name;
  final String message;
  final String day;
  final bool isActive;
  const RecieveChatView({
    super.key,
    required this.photoUrl,
    required this.name,
    required this.message,
    required this.day,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        photoUrl.isNotEmpty
            ? CircleAvatar(
                child: Center(
                  child: CachedNetworkImage(
                    imageUrl: photoUrl,
                  ),
                ),
              )
            : const CircleAvatar(
                child: Center(
                  child: Icon(Icons.person),
                ),
              ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // height: 96,
          // width: 280,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: Color(0xFF1A1A1A)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(width: 10),
                  if (isActive)
                    const Icon(
                      Icons.circle,
                      color: Color(0xFF46F9F5),
                      size: 10,
                    )
                ],
              ),
              const SizedBox(height: 10),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.55),
                child: Text(
                  message,
                  style: const TextStyle(
                    color: AppColors.whiteTextColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 60),
            Text(
              day,
              style: const TextStyle(
                color: AppColors.grayTextColor,
                fontSize: 10,
              ),
            ),
          ],
        )
      ],
    );
  }
}

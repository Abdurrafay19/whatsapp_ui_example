import 'package:flutter/material.dart';

class MessageBar extends StatefulWidget {
  const MessageBar({super.key});

  @override
  State<MessageBar> createState() => _MessageBarState();
}

class _MessageBarState extends State<MessageBar> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 30,
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: 45,
        ),
      ),
      title: const Text(
        'Me',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
      subtitle: const Text(
        'Hi it\'s me',
        style: TextStyle(color: Colors.grey, fontSize: 15),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            height: 5,
          ),
          Text(
            '3:56 pm',
            style: TextStyle(color: Colors.green.shade600, fontSize: 15),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 20,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green.shade600,
            ),
            child: const Center(
                child: Text(
              '2',
              style: TextStyle(fontSize: 15, color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}

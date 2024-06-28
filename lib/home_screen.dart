import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'message_bar.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'WhatsApp',
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'Rubik Medium',
                color: Colors.green.shade600),
          ),
          leading: null,
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  CupertinoIcons.camera,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ))
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.circle_outlined,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  hintText: ('Ask Meta AI or Search'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: const MessageBar(),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.chat,
                          size: 30,
                          color: Colors.black,
                        )),
                    const Text(
                      'Chats',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          CupertinoIcons.chat_bubble_2,
                          size: 30,
                          color: Colors.black,
                        )),
                    const Text(
                      'Updates',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.people_alt_outlined,
                          size: 30,
                          color: Colors.black,
                        )),
                    const Text(
                      'Communities',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          CupertinoIcons.phone,
                          size: 30,
                          color: Colors.black,
                        )),
                    const Text(
                      'Calls',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.green.shade600,
          child: const Icon(
            Icons.chat_bubble_outline,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

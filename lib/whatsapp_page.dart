import 'package:flutter/material.dart';
import 'package:ui_whatsapp/Widgets/calls_view.dart';
import 'package:ui_whatsapp/Widgets/chat_view.dart';
import 'package:ui_whatsapp/Widgets/status_view.dart';
import 'package:ui_whatsapp/theme.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({Key? key}) : super(key: key);

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.index = 1;
    tabController.addListener(() {
      setState(() {
        switch (tabController.index) {
          case 0:
            fabIcon = Icons.camera;
            break;
          case 1:
            fabIcon = Icons.message;
            break;
          case 2:
            fabIcon = Icons.camera_alt;
            break;
          case 3:
            fabIcon = Icons.call;
            break;
          default:
        }
      });
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        backgroundColor: whatAppGreen,
        actions: const [
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALL',
            ),
          ],
          controller: tabController,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Center(
            child: Icon(Icons.camera_alt),
          ),
          ChatView(),
          StatusView(),
          CallsView()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: whatAppLightGreen,
        child: Icon(fabIcon),
      ),
    );
  }
}

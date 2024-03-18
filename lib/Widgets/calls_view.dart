import 'package:flutter/material.dart';
import 'package:ui_whatsapp/models/calls.dart';
import 'package:ui_whatsapp/theme.dart';

class CallsView extends StatelessWidget {
  const CallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callList.length,
        itemBuilder: (context, index) {
          final call = callList[index];
          return ListTile(
              leading: const Icon(Icons.account_circle,
                  size: 58, color: Colors.black45),
              title: Text(
                call.name,
                style: customTextStyle,
              ),
              subtitle: Text(
                call.time,
                style: const TextStyle(color: Colors.black45, fontSize: 16),
              ),
              trailing: const Icon(
                Icons.call,
                color: Colors.green,
                size: 30,
              ));
        });
  }
}

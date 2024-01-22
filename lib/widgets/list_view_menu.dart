import 'package:flutter/material.dart';

class ListViewMenu extends StatelessWidget {
  const ListViewMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("List View Menu"),
      ),
      body: Container(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("MENU-1"),
              subtitle: Text("SUB-1"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                debugPrint("MENU-1");
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(color: Colors.red);
          },
          itemCount: 4,
        ),
      ),
    );
  }
}

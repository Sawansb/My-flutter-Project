import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('CHATS'),
              ),
              Tab(
                child: Text('STATUS'),
              ),
              Tab(
                child: Text('CALLS'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(
                itemBuilder: (context) => const [
                      PopupMenuItem(value: '1', child: Text('New Group')),
                      PopupMenuItem(value: '2', child: Text('Add Contact')),
                      PopupMenuItem(value: '3', child: Text('Linked Devices')),
                      PopupMenuItem(value: '4', child: Text('Settings')),
                      PopupMenuItem(value: '5', child: Text('New Broadcast')),
                      PopupMenuItem(value: '6', child: Text('payment')),
                    ]),
          ],
        ),
        body: TabBarView(children: [
          const Text('Sawan'),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/11500401/pexels-photo-11500401.jpeg'),
                  ),
                  title: Text(
                    'Sawan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('How are you??????'),
                  trailing: Text('8:16'),
                );
              }),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StatusView(
                  radius: 30,
                  spacing: 15,
                  strokeWidth: 1.5,
                  indexOfSeenStatus: 0,
                  numberOfStatus: 5,
                  padding: 4,
                  centerImageUrl: 'https://images.pexels.com/photos/11500401/pexels-photo-11500401.jpeg',
                  seenColor: Colors.grey,
                  unSeenColor: Colors.red,
                ),
                const SizedBox(width: 20,),
                const Text("My Status",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

              ],
            ),
          ),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/11500401/pexels-photo-11500401.jpeg'),
                  ),
                  title: Text(
                    'Sawan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Missed Calls')),
                  trailing: Icon(Icons.call),
                );
              })
        ]),
      ),
    );
  }
}

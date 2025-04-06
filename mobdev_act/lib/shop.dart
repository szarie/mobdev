import 'package:flutter/material.dart';
import 'package:mobdev_act/main.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  TextEditingController nameController = TextEditingController();

  final List<Profile> profiles = [
    Profile(
        name: 'John Doe',
        email: 'johndoe@example.com',
        phone: '1234567890',
        photo: 'assets/icons/mona.png'),
    Profile(
        name: 'Jane Doe',
        email: 'janedoe@example.com',
        phone: '0987654321',
        photo: 'assets/icons/mona2.jpg'),
    Profile(
        name: 'Aiko',
        email: 'Aicute@example.com',
        phone: 'N11103437',
        photo: 'assets/icons/fubuki.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Card'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 42, 204, 64),
                const Color.fromARGB(255, 78, 154, 247)
              ],
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Main()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(profiles[index].photo),
            ),
            title: Text(profiles[index].name),
            subtitle: Text(profiles[index].email),
            trailing: Text(profiles[index].phone),
          ));
        },
      ),
    );
  }
}

class Profile {
  final String name;
  final String email;
  final String phone;
  final String photo;

  Profile(
      {required this.name,
      required this.email,
      required this.phone,
      required this.photo});
}

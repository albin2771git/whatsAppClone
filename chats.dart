import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  var imgs = <String>[
    'https://media2.bollywoodhungama.in/wp-content/uploads/2016/03/Sunny-Leone.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Samantha.jpg/383px-Samantha.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Priyanka-chopra-gesf-2018-7565.jpg/330px-Priyanka-chopra-gesf-2018-7565.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Johnny_Depp_2020.jpg/330px-Johnny_Depp_2020.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/D6B_1437_-_Dani_Daniels_%2812094625123%29.jpg/375px-D6B_1437_-_Dani_Daniels_%2812094625123%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Nivin_Pauly_in_Filmfare_Middle_East_Awards_2021.jpg/330px-Nivin_Pauly_in_Filmfare_Middle_East_Awards_2021.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Fahadh_Faasil_at_Kuttanpillayude_Sivarathri_Audio_launch.jpg/330px-Fahadh_Faasil_at_Kuttanpillayude_Sivarathri_Audio_launch.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Mammootty2022.jpg/375px-Mammootty2022.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Mohanlal_Viswanathan_BNC.jpg/330px-Mohanlal_Viswanathan_BNC.jpg',
  ];
  var names = <String>[
    'Sunny Leone',
    'Samantha',
    'Priyanka',
    'jonny Depp',
    'dani',
    'Nivin',
    'Fahadh',
    'Mammotty',
    'Mohanlal'
  ];
  var msg = <String>[
    'hello',
    'nice',
    'see you later',
    'hello',
    'mahn',
    'cool',
    'da',
    'good',
    'All the Best'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: ((context, index) {
              return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("${imgs[index]}"),
                  ),
                  title: Text("${names[index]}"),
                  subtitle: Text("${msg[index]}"),
                  trailing: Icon(Icons.check));
            }),
            separatorBuilder: ((context, index) {
              return Divider();
            }),
            itemCount: imgs.length));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  var imgsstatus = <String>[
    'https://igimages.gumlet.io/malayalam/gallery/movies/kappela/poster.jpg?w=200&dpr=1.3',
    'https://igimages.gumlet.io/malayalam/gallery/movies/varthamanam2020/poster.jpg?w=200&dpr=1.3',
    'https://igimages.gumlet.io/malayalam/gallery/movies/kayamkulamkochunni/poster.jpg?w=200&dpr=1.3',
    'https://igimages.gumlet.io/malayalam/gallery/movies/abramintesanthathikal/poster.jpg?w=200&dpr=1.3',
    'https://igimages.gumlet.io/malayalam/gallery/movies/mystory2017/poster.jpg?w=200&dpr=1.3',
    'https://igimages.gumlet.io/malayalam/gallery/movies/mahanati2018/poster.jpg?w=200&dpr=1.3',
    'https://igimages.gumlet.io/malayalam/gallery/movies/maamankaam2018/poster.jpg?w=200&dpr=1.3',
    'https://igimages.gumlet.io/malayalam/gallery/movies/karwhan2017/poster.jpg?w=200&dpr=1.3',
    'https://igimages.gumlet.io/malayalam/gallery/movies/uncle2018/poster.jpg?w=200&dpr=1.3',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage("${imgsstatus[index]}")),
                title: Text("${names[index]}"),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: imgsstatus.length));
  }
}

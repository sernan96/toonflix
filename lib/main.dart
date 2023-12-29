import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player {
  String? name;
  //데이터타입에 ?가 있으면 있을수도 없을수도 있다는 것
  Player({required this.name});
}

//위젯들을 레고블럭 처럼 합쳐서 앱을 만들어냄
//위젯들을 다 외울 필요는 없음
void main() {
  //처음 시작되는 App이라는 위젯이 root이다.
  //앱의 root는 material or IOS 디자인을 사용할지결정을 해야한다.
  var nico = Player(name: "potato");
  nico.name;
  runApp(App());
}

//class의 생성자 같이 statelessWidget을 상속바으면
//build라는 메소드를 구현해줘야한다.
//build 메소드가 ui를 생성하게 됨(build return값을 화면에 출력)
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return으로 material(구글), cupertino(애플)디자인 시스템
    //둘 중 하나를 return 하게됨
    //scaffold를 통해 구조를 잡아줘야 한다. 레이아웃 개념인듯
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter!'),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
    //보통 materialApp이 flutter도 구글이 만들었기에
    //더 보기 좋다.
  }
}

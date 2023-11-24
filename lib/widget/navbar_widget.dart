import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({Key? key}) : super(key: key) ;

  @override
  Widget build(BuildContext context){
    return BottomAppBar(
      clipBehavior: Clip.antiAlias,
      shape: const CircularNotchedRectangle() ,
      notchMargin: 8,
      color: Colors.transparent,
      elevation: 10,
      child: Container(
      height: 50.0,
      decoration: const BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.0),
        topRight: Radius.circular(25.0),
      ),
      ),
      ),
      
    );
  }
}
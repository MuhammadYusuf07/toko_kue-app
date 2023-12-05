import 'package:flutter/material.dart';
import 'package:toko_kue/widget/navbar_widget.dart';
import 'package:toko_kue/screen/cakery_page.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
        icon: const Icon(
        Icons.arrow_back,
        color: Color(0xFF545D68),
        ),   
        onPressed: () {},
        ),
        title: const Text(
          ' Cakery Page',
          
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 2.0,
            color: Color(0xFF545D68),
          ),
          ),
        actions: [
          IconButton(
          icon: const Icon(
          Icons.notifications_none,
          color: Color(0xFF545D68),
          ),
          onPressed: () {},
          ),
        ],
    ),
      body: ListView(
         padding: const EdgeInsets.only(left: 20.0) ,
          children: [
            const SizedBox(height: 15.0),
            const Text('Menu',
                style: TextStyle(
                       fontFamily: 'Varella',
                       fontSize: 42.0,
                       fontWeight: FontWeight.bold)),
            const SizedBox(height: 15.0),
            TabBar(
                controller: _tabController,
                indicatorColor:  Colors.transparent,
                labelColor: const Color(0xFFC88D67),
                isScrollable: true,
                labelPadding: const EdgeInsets.only(right: 25),
                unselectedLabelColor: const Color(0xFFCDCDCD),
            tabs: const [
              Tab(
                child: Text("Cake Box",
                style: TextStyle(
                   fontFamily: 'Varella',
                   fontSize: 21.0,
                ) ),
              ),
              Tab(
                child: Text("Cake SLice ",
                style: TextStyle(
                   fontFamily: 'Varella',
                   fontSize: 21.0,
                ) ),
              ),
              Tab(
                child: Text("Chiffon",
                style: TextStyle(
                   fontFamily: 'Varella',
                   fontSize: 21.0,
                ) ),
              )

            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  CakeryPage(),
                  CakeryPage(),
                  CakeryPage(),
                ],
               ),
            )

        
        
          ],
          
          
          
          
          
          ),         
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton(
      onPressed:() {},
      backgroundColor: const Color(0xFF17532),
      child: const Icon(Icons.fastfood),
    ),
    bottomNavigationBar: const NavbarWidget(),
    );
  }
}

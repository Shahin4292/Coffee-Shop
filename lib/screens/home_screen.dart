import 'package:coffee_shop/widgets/items_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/home_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.sort_rounded,
            size: 35,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: 35,
              color: Colors.white.withOpacity(0.5),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "It's a Great Day for Coffee",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 50, 54, 56),
            ),
            child: TextFormField(
              style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Find your Coffee",
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
                prefixIcon: Icon(Icons.search,
                    size: 25, color: Colors.white.withOpacity(0.5)),
              ),
            ),
          ),
          TabBar(
              controller: _tabController,
              labelColor: const Color(0xFFE57734),
              unselectedLabelColor: Colors.white.withOpacity(0.5),
              isScrollable: true,
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                width: 3,
                color: Color(0xFFE57734),
              )),
              dividerColor: Colors.transparent,
              labelStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              labelPadding: const EdgeInsets.symmetric(horizontal: 20),
              tabs: const [
                Tab(
                  text: "Hot Coffee",
                ),
                Tab(
                  text: "Cold Coffee",
                ),
                Tab(
                  text: "Cappuccino",
                ),
                Tab(
                  text: "Americano",
                ),
              ]),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: [
            ItemsWidget(),
            ItemsWidget(),
            ItemsWidget(),
            ItemsWidget(),
          ][_tabController.index])
        ],
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}

import 'package:flutter/material.dart';
class ResponsiveHomePage extends StatefulWidget {
  @override
  _ResponsiveHomePageState createState() => _ResponsiveHomePageState();
}

class _ResponsiveHomePageState extends State<ResponsiveHomePage> {
  String selectedFilter = "All Status";
  bool showList = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: isMobile(context) ? buildDrawer() : null,
      appBar: isMobile(context) ? AppBar(title: Text("Houzez")) : null,
      body: Row(
        children: [
          if (!isMobile(context)) buildSidebar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader(),
                  if (showList) buildList(),
                  buildFilters(),
                  buildDiscoverSection(),
                  buildCardsSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Houzez", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          if (!isMobile(context)) ...[
            ElevatedButton(
              onPressed: () => setState(() => showList = !showList),
              child: Text("Toggle List"),
            ),
          ],
        ],
      ),
    );
  }

  Widget buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("Menu", style: TextStyle(fontSize: 24))),
          ListTile(title: Text("Home"), onTap: () {}),
          ListTile(title: Text("Properties"), onTap: () {}),
          ListTile(title: Text("Contact"), onTap: () {}),
        ],
      ),
    );
  }

  Widget buildSidebar() {
    return Container(
      width: 200,
      color: Colors.grey[200],
      child: Column(
        children: [
          ListTile(title: Text("Home"), onTap: () {}),
          ListTile(title: Text("Properties"), onTap: () {}),
          ListTile(title: Text("Contact"), onTap: () {}),
        ],
      ),
    );
  }

  Widget buildList() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: List.generate(5, (index) => ListTile(title: Text("List Item \$index"))),
      ),
    );
  }

  Widget buildFilters() {
    List<String> filters = ["All Status", "For Rent Only"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: filters.map((filter) {
        return GestureDetector(
          onTap: () => setState(() => selectedFilter = filter),
          child: Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: selectedFilter == filter ? Colors.blue : Colors.white,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              filter,
              style: TextStyle(
                color: selectedFilter == filter ? Colors.white : Colors.blue,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget buildDiscoverSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text("Discover", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "Slider \$index",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildCardsSection() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isMobile(context) ? 1 : 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 3 / 4,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                      image: DecorationImage(
                        image: AssetImage("assets/house_placeholder.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Property Title", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text("Location", style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }
}

import 'package:flutter/material.dart';
class ResponsiveHomePage extends StatefulWidget {
  @override
  _ResponsiveHomePageState createState() => _ResponsiveHomePageState();
}
class _ResponsiveHomePageState extends State<ResponsiveHomePage> {
  bool showList = false;
  String selectedStatus = "All Status";
  String selectedPropertyType = "Select Property";
  String selectedLocation = "Select Location";
  String selectedSize = "Select Size";
  String selectedBudget = "Select Budget";
  String? lookingFor;
  String? location;
  String? propertySize;
  String? budget;

  final List<String> lookingForOptions = ['House', 'Apartment', 'Villa', 'Commercial'];
  final List<String> locationOptions = ['New York', 'Los Angeles', 'Chicago', 'Houston'];
  final List<String> propertySizeOptions = ['500 sqft', '1000 sqft', '1500 sqft', '2000+ sqft'];
  final List<String> budgetOptions = ['\$50,000', '\$100,000', '\$200,000', 'Above \$500,000'];
  final List<String> menuItems = ["Home", "Property", "Properties", "Realtor", "Others",];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF00305E),
      drawer: isMobile(context) ? buildDrawer() : null,
      appBar: isMobile(context)
          ? AppBar(
        backgroundColor: Color(0xFF00305E),
        title: DefaultTextStyle(
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          child: Text("Houses"),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu,color: Colors.white,),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person,color: Colors.white,),
            onPressed: () => showLoginDialog(),
          ),
        ],
      )
          : null,
      body: Column(
        children: [
          buildHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 1,
                    child: ColoredBox(color: Colors.white),
                  ),
                  SizedBox(height: 200,),
                  Center(child: Text("Welcome to Houzez",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 32),)),
                  Center(child: Text("Houzez is an innovative real estate WordPress theme that helps to ensure your",
                    style: TextStyle(fontSize: 20,color: Colors.white),)),
                  Center(child: Text("website’s success in this super-competitive market.",
                    style: TextStyle(fontSize: 20,color: Colors.white),)),
                  SizedBox(height: 200,),

                  // Toggle buttons for status selection
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: ["All Status", "For Rent", "For Sale"].map((status) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedStatus = status;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedStatus == status ? Colors.blue : Colors.white,
                            foregroundColor: selectedStatus == status ? Colors.white : Colors.black,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Text(status),
                        ),
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 20),

                  // Search Form (Responsive)
                  SizedBox(height: 10),
                  if(MediaQuery.of(context).size.width < 600)
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child:
                    SizedBox(
                      child: Column(
                        children: [
                            Column(
                              children: [
                                _buildDropdown("Looking for", lookingFor, lookingForOptions, (value) {
                                  setState(() {
                                    lookingFor = value;
                                  });
                                }),
                                _buildDropdown("Location", location, locationOptions, (value) {
                                  setState(() {
                                    location = value;
                                  });
                                }),
                                _buildDropdown("Property Size", propertySize, propertySizeOptions, (value) {
                                  setState(() {
                                    propertySize = value;
                                  });
                                }),
                                _buildDropdown("Your Budget", budget, budgetOptions, (value) {
                                  setState(() {
                                    budget = value;
                                  });
                                }),
                              ],
                            ),
                          SizedBox(height: 15),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                print("Searching for $lookingFor in $location, Size: $propertySize, Budget: $budget");
                              },
                              child: Text("Search"),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 14),
                                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  if(MediaQuery.of(context).size.width > 600)
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child:
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildDropdown("Looking for", lookingFor, lookingForOptions, (value) {
                                setState(() {
                                  lookingFor = value;
                                });
                              }),
                              _buildDropdown("Location", location, locationOptions, (value) {
                                setState(() {
                                  location = value;
                                });
                              }),
                              _buildDropdown("Property Size", propertySize, propertySizeOptions, (value) {
                                setState(() {
                                  propertySize = value;
                                });
                              }),
                              _buildDropdown("Your Budget", budget, budgetOptions, (value) {
                                setState(() {
                                  budget = value;
                                });
                              }),
                            ],
                          ),
                          SizedBox(height: 15),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                print("Searching for $lookingFor in $location, Size: $propertySize, Budget: $budget");
                              },
                              child: Text("Search"),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 14),
                                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  buildDiscoverSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the header for Web and Mobile
  Widget buildHeader() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: isMobile(context) ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
        children: [
          if (!isMobile(context)) Text("Houses", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.white)),
          if (!isMobile(context)) buildMenuButtons(),
          if (!isMobile(context)) IconButton(
            icon: Icon(Icons.person,color: Colors.white,size: 30,),
            onPressed: () => showLoginDialog(),
          ),
        ],
      ),
    );
  }

  /// Builds menu buttons with hover dropdown (Web) and tap dropdown (Mobile)
  Widget buildMenuButtons() {
    return Row(
      children: menuItems.map((item) => buildDropdownButton(item)).toList(),
    );
  }

  /// Builds Dropdown Button (Hover for Web, Tap for Mobile)
  Widget buildDropdownButton(String title) {
    GlobalKey key = GlobalKey();
    return MouseRegion(
      onEnter: (_) {
        if (!isMobile(context)) {
          RenderBox renderBox = key.currentContext?.findRenderObject() as RenderBox;
          Offset position = renderBox.localToGlobal(Offset.zero);
          showMenu(
            context: context,
            position: RelativeRect.fromLTRB(
                position.dx,
                position.dy + renderBox.size.height,
                position.dx + 200,
                position.dy + 200
            ),
            color: Colors.transparent, // Removes white background
            elevation: 0, // No shadow
            items: [
              PopupMenuItem(
                child: Text("Option for $title", style: TextStyle(color: Colors.white)),
              ),
              PopupMenuItem(
                child: Text("Option for $title", style: TextStyle(color: Colors.white)),
              ),
              PopupMenuItem(
                child: Text("Option for $title", style: TextStyle(color: Colors.white)),
              ),
            ],
          );
        }
      },
      child: PopupMenuButton(
        key: key,
        color: Colors.black, // Background color for the dropdown items
        elevation: 0, // No shadow
        onSelected: (value) {},
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text("Option for $title", style: TextStyle(color: Colors.white)),
          ),
          PopupMenuItem(
            child: Text("Option for $title", style: TextStyle(color: Colors.white)),
          ),
        ],
        child: TextButton(
          onPressed: () {
            if (isMobile(context)) {
              showMenu(
                context: context,
                position: RelativeRect.fill, // Shows the dropdown in a better position
                color: Colors.black, // Background color for the dropdown items
                elevation: 0,
                items: [
                  PopupMenuItem(
                    child: Text("Option for $title", style: TextStyle(color: Colors.white)),
                  ),
                  PopupMenuItem(
                    child: Text("Option for $title", style: TextStyle(color: Colors.white)),
                  ),
                ],
              );
            }
          },
          child: Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
        ),
      ),
    );
  }


  // Mobile screen per jo drawer dikhega
  Widget buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Text("Menu", style: TextStyle(fontSize: 24))),
          ...menuItems.map((item) => ListTile(
            title: Text(item),
            onTap: () {
              setState(() => showList = !showList);
              Navigator.pop(context); //drawer band
            },
          )).toList(),
        ],
      ),
    );
  }

  /// Displays Login Dialog Box
  void showLoginDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Login"),
          content: Text("Enter your details to log in."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Login"),
            ),
          ],
        );
      },
    );
  }

  /// Builds Discover Section with Horizontal Scroll List
  Widget buildDiscoverSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text("Discover Our Featured Listings",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white))),Center(child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing eli",
            style: TextStyle(fontSize: 20, color: Colors.white))),
        SizedBox(height: 50,),
        Container(

          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 25,
            itemBuilder: (context, index) {
              return Container(
                width: 300,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.primaries[index % Colors.primaries.length],
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Center(
                  child: Text(
                    "Slider ${index+1}",
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


  /// Jab screen width 600 se choti ho
  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }
}

// Dropdown Field Widget
Widget buildDropdownField(String label, List<String> items, String selectedValue, Function(String) onChanged) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      const SizedBox(height: 5),
      DropdownButtonFormField<String>(
        value: selectedValue,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        ),
        items: items.map((item) {
          return DropdownMenuItem(value: item, child: Text(item));
        }).toList(),
        onChanged: (value) => onChanged(value!),
      ),
    ],
  );
}

Widget _buildDropdown(String title, String? value, List<String> items, ValueChanged<String?> onChanged) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(height: 5),
        DropdownButtonFormField<String>(
          value: value,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          ),
          items: items.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'CHUTIMA';
    final email = 'chutima@onna.com';
    final urlImage =
        'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/293322459_5319408484793514_5757599367281822111_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFuNa8qcOfD6ZIx4kFIVEkSjK096l_Yz8SMrT3qX9jPxOJzzqLwj4Q56P4PbeiLkKIfyTLVVHd6Qyc7wUV6MMiU&_nc_ohc=js64QMlu9mYAX_UqSBD&tn=iFIfqv2gQOvzQK0y&_nc_zt=23&_nc_ht=scontent.fbkk12-3.fna&oh=00_AT_8LSJnGOkPgVZlASboeGUyCz8SWv8lAQ9qOlWgxCUiKg&oe=631A886E';
    return Drawer(
      child: Material(
        color: Colors.orange,
        child: ListView(children: <Widget>[
          buildHeader(
            urlImage: urlImage,
            name: name,
            email: email,
          ),
          Container(
            padding: padding,
            child: Column(
              children: [
                const SizedBox(height: 48),
                buildSearchField(),
                const SizedBox(height: 24),
                buildMenuItem(
                  text: 'People',
                  icon: Icons.people,
                ),
                const SizedBox(height: 48),
                buildMenuItem(
                  text: 'Favourites',
                  icon: Icons.favorite_border,
                ),
                const SizedBox(height: 48),
                buildMenuItem(
                  text: 'Address',
                  icon: Icons.add_location_rounded,
                ),
                const SizedBox(height: 48),
                buildMenuItem(
                  text: 'Payment',
                  icon: Icons.credit_card_outlined,
                ),
                const SizedBox(height: 24),
                Divider(color: Colors.white70),
                const SizedBox(height: 24),
                buildMenuItem(
                  text: 'Settings',
                  icon: Icons.settings,
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Help',
                  icon: Icons.help_outline,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
  }) =>
      InkWell(
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,
          style: TextStyle(
            color: color,
          )),
      hoverColor: hoverColor,
      onTap: () {},
    );
  }
}

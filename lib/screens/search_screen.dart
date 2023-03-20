import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:video_1/models/user_model.dart';
import 'package:video_1/screens/profile_screen.dart';
import 'package:video_1/widgets/custom_bottom_app_bar.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/Search';

  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> users = User.users;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Discover',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
      body: MasonryGridView.count(
        shrinkWrap: true,
        itemCount: users.length,
        padding: const EdgeInsets.all(10.0),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.routeName,
                  arguments: users[index]);
            },
            child: Stack(
              children: [
                Container(
                  height: (index == 0) ? 250 : 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(users[index].imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.black],
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(users[index].imagePath),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            users[index].username,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '2 min ago',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

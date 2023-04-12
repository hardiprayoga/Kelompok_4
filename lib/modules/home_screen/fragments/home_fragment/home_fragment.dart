import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan_v/configs/app_routes.dart';
import 'package:pertemuan_v/models/user.dart';
import 'package:pertemuan_v/modules/home_screen/fragments/home_fragment/home_fragment_widgets.dart';

import '../../../../models/news.dart';

// import 'home_fragment_widgets.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({
    super.key,
    required this.user, 
    required this.latesNews,  //add constructor latesNews
    required this.homeScaffold,
  });

  final User user;
  final List<News> latesNews; 
  final GlobalKey<ScaffoldState> homeScaffold;

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: HomeFragmentWidget.header(
              user: widget.user,
              homeScaffoldState: widget.homeScaffold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: HomeFragmentWidget.searchField(),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: HomeFragmentWidget.sectionTitle(
                      "Hotest News",
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: InkWell(
                      onTap: (){
                        GoRouter.of(context).goNamed(
                          AppRoutes.newsDetailHot,
                        );
                      },
                    child: HomeFragmentWidget.hotestNewsCard(
                      size,
                      "https://upload.wikimedia.org/wikipedia/commons/3/3c/Mount_Cikuray_from_Cisurupan.JPG", 
                      "Gunung Cikuray", 
                    ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SectionTitle(
                      label: "Latest News",
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: HomeFragmentWidget.latestNewsSection(
                      size,
                      widget.latesNews
                      /* new: add list lates-news */
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

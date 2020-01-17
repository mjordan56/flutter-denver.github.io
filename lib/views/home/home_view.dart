import 'package:flutter/material.dart';
import 'package:flutter_denver/views/home/home_content_desktop.dart';
import 'package:flutter_denver/views/home/home_content_mobile.dart';
import 'package:flutter_denver/widgets/centered_view/centered_view.dart';
import 'package:flutter_denver/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter_denver/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

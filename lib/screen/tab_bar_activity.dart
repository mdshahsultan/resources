import 'package:flutter/material.dart';
import '../Fragment/AlarmFragment.dart';
import '../Fragment/BalanceFragment.dart';
import '../Fragment/EmailFragment.dart';
import '../Fragment/HomeFragment.dart';
import '../Fragment/MailFragment.dart';
import '../Fragment/PersonFragment.dart';
import '../Fragment/SearchFragment.dart';
import '../Fragment/SettingsFragment.dart';


class TabBarActivity extends StatelessWidget {
  TabBarActivity({super.key});
  //When onpress then work this code
  // mySnackBar(context,msg){
  //   return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  // }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar Activity"), //style: TextStyle(color: Colors.white),
            centerTitle: true,
            //backgroundColor: Colors.blue,
            bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home",),
                  Tab(icon: Icon(Icons.search), text: "search",),
                  Tab(icon: Icon(Icons.settings), text: "settings",),
                  Tab(icon: Icon(Icons.email), text: "email",),
                  Tab(icon: Icon(Icons.contact_mail), text: "mail",),
                  Tab(icon: Icon(Icons.person), text: "person",),
                  Tab(icon: Icon(Icons.access_alarm), text: "alarm",),
                  Tab(icon: Icon(Icons.account_balance), text: "balance",),
                ],
            ),
          ),

          body: TabBarView(
              children: [
                Homefragment(),
                Searchfragment(),
                Settingsfragment(),
                Emailfragment(),
                Mailfragment(),
                Personfragment(),
                Alarmfragment(),
                Balancefragment(),
              ],
          ),
        )
    );
  }
}

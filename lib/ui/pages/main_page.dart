part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem(String title, int index) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(title,
                style: regularTextStyle.copyWith(
                  fontSize: 18,
                  color: kPrimaryColor,
                  fontWeight: index == selectedIndex
                      ? FontWeight.w500
                      : FontWeight.w300,
                )),
            SizedBox(
              height: 4,
            ),
            Container(
              width: 30,
              height: 2,
              decoration: BoxDecoration(
                color:
                    index == selectedIndex ? kPrimaryColor : kTransparentColor,
                borderRadius: BorderRadius.circular(18),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          /// NAV BAR
          CustomNavBar(),

          SizedBox(
            height: 50,
          ),

          // CONTENT
          LandingPage(),
          SizedBox(
            height: 50,
          ),
          //FOOTER
          Container(
            margin: EdgeInsets.only(bottom: 30),
            width: double.infinity,
            height: 80,
            color: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => launch('https://www.instagram.com/_aldijayadi/'),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('icons/instagram.png'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    onTap: () => launch('https://www.linkedin.com/in/aldijayadi/'),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('icons/linkedin.png'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    onTap: () => launch('https://twitter.com/aldi_jayadi29'),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('icons/twitter.png'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    onTap: () => launch('https://dribbble.com/aldiJayadi_'),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('icons/dribbble.png'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

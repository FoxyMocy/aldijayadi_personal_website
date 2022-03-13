part of '../pages.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'images/personal_logo.png',
                  width: 72,
                  height: 40,
                ),
                Row(
                  children: [
                    navItem('Home', 0),
                    SizedBox(
                      width: 50,
                    ),
                    navItem('About', 1),
                    SizedBox(
                      width: 50,
                    ),
                    navItem('Works', 2),
                    SizedBox(
                      width: 50,
                    ),
                    navItem('Services', 3),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text(
                      'Contact Me',
                      style: regularTextStyle.copyWith(color: kWhiteColor),
                    )),
                  ),
                )
              ],
            ),
          ),

          SizedBox(
            height: 50,
          ),

          // CONTENT
          Container(
            margin: EdgeInsets.only(left: 100, right: 100),
            height: 654,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 700,
                      child: Text(
                        'Hello!',
                        style: headTextStyle.copyWith(),
                      ),
                    ),
                    Container(
                      width: 700,
                      child: Text(
                        "I'm Aldi Jayadi,",
                        style: headTextStyle.copyWith(),
                      ),
                    ),
                    Container(
                      width: 700,
                      child: Text(
                        'Mobile App Programmer',
                        style: regularTextStyle.copyWith(
                            fontSize: 64, color: kPrimaryColor),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: 700,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vitae luctus mi.Ut congue neque at ex faucibus, non luctus urna feugiat. Morbi a consequat diam. Nullam convallis ex id aliquet ultricies.',
                        style: regularTextStyle.copyWith(
                            fontSize: 18, color: kPrimaryColor),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                            child: Text(
                          'Hire Me',
                          style: regularTextStyle.copyWith(color: kWhiteColor),
                        )),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 505,
                  height: 642,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/personal_photo.png'),
                          fit: BoxFit.contain)),
                )
              ],
            ),
          ),
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
                    onTap: () {},
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
                    onTap: () {},
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
                    onTap: () {},
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
                    onTap: () {},
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

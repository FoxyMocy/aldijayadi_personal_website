part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget NavBar() {
      return Align(
        alignment: Alignment.topCenter,
        child: Padding(
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
                  CustomNavBar(
                    pageName: 'Home',
                    selectedIndex: 0,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  CustomNavBar(
                    pageName: 'About',
                    selectedIndex: 1,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  CustomNavBar(
                    pageName: 'Works',
                    selectedIndex: 2,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  CustomNavBar(
                    pageName: 'Skills',
                    selectedIndex: 3,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => ContactMePage()));
                },
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
      );
    }

    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return LandingPage();
        case 1:
          return AboutMePage();
        case 2:
          return WorksPage();
        case 3:
          return SkillsPage();
        default:
          return LandingPage();
      }
    }

    return BlocBuilder<PageCubit, int>(builder: (context, currentIndex) {
      return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: ListView(
            children: [
              /// NAV BAR
              NavBar(),

              SizedBox(
                height: 50,
              ),

              // CONTENT
              Align(
                  alignment: Alignment.center,
                  child: buildContent(currentIndex)),
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
                        onTap: () =>
                            launch('https://www.instagram.com/_aldijayadi/'),
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
                        onTap: () =>
                            launch('https://www.linkedin.com/in/aldijayadi/'),
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
                        onTap: () =>
                            launch('https://play.google.com/store/apps/dev?id=5028283504980652787'),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('icons/google_play.png'),
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
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Center(
                    child: Text(
                  "Sorry, this website is still under construction.",
                  style: headTextStyle.copyWith(fontSize: 14),
                )),
                width: double.infinity
              )
            ],
          ),
        ),
      );
    });
  }
}

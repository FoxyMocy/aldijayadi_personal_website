part of 'widgets.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({ Key? key }) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;

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
                      ? FontWeight.w700
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

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          );
  } 
}
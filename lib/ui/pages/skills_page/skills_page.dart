part of '../pages.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 100, right: 100),
          width: double.infinity,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/illu_construction.png'),
                        fit: BoxFit.contain)),
                height: 460,
                width: 320,
              ),
              SizedBox(height: 24,),
              Text(
                'Under Construction',
                style: headTextStyle.copyWith(fontSize: 24),
              )
            ],
          )),
        ),
      ],
    );
  }
}

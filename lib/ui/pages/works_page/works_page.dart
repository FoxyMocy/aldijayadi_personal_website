part of '../pages.dart';

class WorksPage extends StatelessWidget {
  const WorksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: Column(
        children: [
          // LEFT ILLU
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 355,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/illu_project_beelajar.png'),
                        fit: BoxFit.contain)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Beelajar',
                      style: headTextStyle.copyWith(fontSize: 48),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      txtProject,
                      style: regularTextStyle.copyWith(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),

          SizedBox(
            height: 20,
          ),

          // RIGHT ILLU
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alfa Learning',
                      style: headTextStyle.copyWith(fontSize: 48),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      txtAlfa,
                      style: regularTextStyle.copyWith(fontSize: 18),
                    )
                  ],
                ),
              ),
              Container(
                height: 355,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/illu_project_alfa.png'),
                        fit: BoxFit.contain)),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // LEFT ILLU
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 355,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/illu_project_left_section.png'),
                        fit: BoxFit.contain)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IP Academy',
                      style: headTextStyle.copyWith(fontSize: 48),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      txtIpAcademy,
                      style: regularTextStyle.copyWith(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

part of 'widgets.dart';

class CustomNavBar extends StatelessWidget {
  int selectedIndex;
  String pageName;
  CustomNavBar({Key? key, required this.selectedIndex, required this.pageName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<PageCubit>().setPage(selectedIndex);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(pageName,
              style: regularTextStyle.copyWith(
                fontSize: 18,
                color: kPrimaryColor,
                fontWeight:
                    context.read<PageCubit>().state == selectedIndex ? FontWeight.w700 : FontWeight.w300,
              )),
          SizedBox(
            height: 4,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == selectedIndex ? kPrimaryColor : kTransparentColor,
              borderRadius: BorderRadius.circular(18),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:webinerd/screens/popularOrganisers.dart';
import 'package:clay_containers/widgets/clay_container.dart';

class GridItem extends StatefulWidget {
  final Key key;
  final Item item;
  final ValueChanged<bool> isSelected;

  GridItem({this.item, this.isSelected, this.key});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;
  Color baseColor = Color(0xFFF26272C);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.isSelected(isSelected);
        });
      },
      child: Image.asset(
        widget.item.imageUrl,

        // color: Colors.black.withOpacity(isSelected ? 0.9 : 0),
        //  colorBlendMode: BlendMode.color,
        // 'https://s3-alpha-sig.figma.com/img/c7fc/f973/de47b7d0478a845536de97631c10b5f3?Expires=1623628800&Signature=R3XMGsIBDhz-dmUVUn-ZJn7fwySbU6GVkxL4bFPACgCMR45ujHgrmI73KE5jv1CQI48AB5Y2t1jX-izpcypEyNPox6E3G23Sr6smAhRBzxEVR1fEah77DwuW6Mmg1KdqDtFHdthR0VW33rLVs6pPRkad7ROvIjMBLe-QUAW494AougFtLikr2~SPaNYKQ9Tsz6tH85~NcOMdGECiNaTD1YY9k1wy67OBMULy5TGnAso12VwPNak1fcsJx7qTNcPY7TJyP398Aa1hHVurof9QwnrGeg93P4RRPUJAHgziouAi6mB3ikYl0vHNMGMnjAffdkLGITJrmWQMySBrxQNq9w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        height: screen.size.height / 1,
        width: screen.size.width / 1,

        fit: BoxFit.fill,
      ),
    );
  }
}

import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:webinerd/screens/chooseCategories.dart';
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
      child: ClayContainer(
        color: baseColor,
        depth: 10,
        spread: 15,
        curveType: CurveType.concave,
        borderRadius: 30,
        height: 0,
        child: Stack(
          children: <Widget>[
            Card(
                semanticContainer: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: baseColor,
                elevation: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    widget.item.imageUrl,

                    // color: Colors.black.withOpacity(isSelected ? 0.9 : 0),
                    //  colorBlendMode: BlendMode.color,
                    // 'https://s3-alpha-sig.figma.com/img/c7fc/f973/de47b7d0478a845536de97631c10b5f3?Expires=1623628800&Signature=R3XMGsIBDhz-dmUVUn-ZJn7fwySbU6GVkxL4bFPACgCMR45ujHgrmI73KE5jv1CQI48AB5Y2t1jX-izpcypEyNPox6E3G23Sr6smAhRBzxEVR1fEah77DwuW6Mmg1KdqDtFHdthR0VW33rLVs6pPRkad7ROvIjMBLe-QUAW494AougFtLikr2~SPaNYKQ9Tsz6tH85~NcOMdGECiNaTD1YY9k1wy67OBMULy5TGnAso12VwPNak1fcsJx7qTNcPY7TJyP398Aa1hHVurof9QwnrGeg93P4RRPUJAHgziouAi6mB3ikYl0vHNMGMnjAffdkLGITJrmWQMySBrxQNq9w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                    height: screen.size.height / 5,
                    width: screen.size.width / 2,
                    color: isSelected
                        ? Colors.lightGreenAccent[400]
                        : Color.fromRGBO(255, 255, 255, 0.5),
                    colorBlendMode: BlendMode.modulate,
                    fit: BoxFit.cover,
                  ),
                ),
                margin: EdgeInsets.all(1)),
            Padding(
              padding: EdgeInsets.only(top: screen.size.height / 15, left: 20),
              child: Text(widget.item.name,
                  style: TextStyle(
                      fontSize: screen.size.height / 40, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

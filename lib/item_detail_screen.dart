import 'package:flutter/material.dart';
import 'package:flutter_vegetarian/model/colors.dart';
import 'package:flutter_vegetarian/model/items_vegetarian.dart';

class ItemDetail extends StatefulWidget {
  final ItemsVegetarian item;

  const ItemDetail({Key? key, required this.item}) : super(key: key);

  @override
  _ItemDetail createState() => _ItemDetail();
}

class _ItemDetail extends State<ItemDetail> {
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 370,
                    color: Colors.green[50],
                    child: Center(
                        child: SizedBox(
                      height: 160,
                      child: Image.asset(widget.item.imageAsset),
                    ))),
                SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.only(top: 16, left: 10),
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Row(
                          children: <Widget>[
                            const Icon(
                              Icons.arrow_back_ios_new,
                              size: 17,
                              color: colorPrimary,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              widget.item.type,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: colorPrimary),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(
                  top: 30, left: 20, bottom: 30, right: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              transform: Matrix4.translationValues(0.0, -27.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      widget.item.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: colorSecondary),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(widget.item.nutrition),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      isShowMore == false &&
                              widget.item.description.length > 320
                          ? '${widget.item.description.substring(0, 320)}...'
                          : widget.item.description,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Center(
                    child: Visibility(
                      visible:
                          !isShowMore && widget.item.description.length > 320,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: colorSecondary),
                          onPressed: () {
                            if (isShowMore == false &&
                                widget.item.description.length > 320) {
                              setState(() => isShowMore = true);
                            }
                          },
                          child: const Text('show more')),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Nutrition ${widget.item.nutritionsTypeWeight}'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

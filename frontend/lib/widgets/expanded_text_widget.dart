import "package:flutter/material.dart";
import 'package:frontend/utils/colors.dart';
import 'package:frontend/utils/dimensions.dart';
import 'package:frontend/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  _ExpanabledTextWidget createState() => _ExpanabledTextWidget();
}

class _ExpanabledTextWidget extends State<ExpandableTextWidget> {
  // if you use late you must inistlized it before running code. It can be null but not empty.
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.63;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(color: AppColors.paraColor, size: Dimensions.font16, text: firstHalf)
          : Column(children: [
            
              SmallText(
                height: 1.6, color: AppColors.paraColor, size: Dimensions.font16, text: hiddenText ? (firstHalf + "...") : (firstHalf + secondHalf),
              ),
              InkWell(
                onTap: () {
                  setState(() => hiddenText = !hiddenText);
                },
                child: Row(
                  children: [
                    SmallText(text: hiddenText? "Show more" : "Show less", color: AppColors.mainColor),
                    // SizedBox(width: Dimensions.width10 / 2),
                    Icon(hiddenText? Icons.arrow_drop_down : Icons.arrow_drop_up,
                        color: AppColors.mainColor), // 4:20:09
                  ],
                ),
              ),
            ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tfse_screening_common/helper/tfse_colors.dart';
import 'package:tfse_screening_common/ui/interfaces/interface_slider_scale.dart';

import '../../helper/constants.dart';

class PainScaleSliderWidget extends StatefulWidget {
  static final int MODE_MOBILE = 1;
  static final int MODE_WEB = 2;

  final InterfaceSliderScale scale;
  final int mode;

  const PainScaleSliderWidget({
    Key? key, required this.scale, required this.mode
  }) : super(key: key);

  @override
  _PainScaleSliderWidgetState createState() => _PainScaleSliderWidgetState();
}

class _PainScaleSliderWidgetState extends State<PainScaleSliderWidget> {
  String _description = Constants.painScale0;
  Color _activeColor = TFSEColors.painScale0;
  Color _thumbColor = TFSEColors.painScale0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Slider(
            value: widget.scale.getScale()!,
            onChanged: (_newValue) => setState(() {
              widget.scale.setScale(_newValue);
            }),
            max: 10,
            min: 0,
            divisions: 10,
            label: _getLabel(),
            activeColor: _activeColor,
            thumbColor: _thumbColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child:Text(_description, style: TextStyle(fontWeight: FontWeight.bold, color: _thumbColor),),
        ),
        Row(
          children: getIcons(),
        ),
      ],
    );
  }

  List<Widget> getIcons() {
    List<Widget> icons = [];

    if(widget.mode == PainScaleSliderWidget.MODE_MOBILE) {
      icons.add(Image.asset('assets/painScale0.png', scale: 4.0));
      icons.add(const Spacer());
      icons.add(Image.asset('assets/painScale2.png', scale: 4.0));
      icons.add(const Spacer());
      icons.add(Image.asset('assets/painScale4.png', scale: 4.0));
      icons.add(const Spacer());
      icons.add(Image.asset('assets/painScale6.png', scale: 4.0));
      icons.add(const Spacer());
      icons.add(Image.asset('assets/painScale8.png', scale: 4.0));
      icons.add(const Spacer());
      icons.add(Image.asset('assets/painScale10.png', scale: 4.0));
    } else {
      icons.add(Image.asset('images/painScale0.png', scale: 4.0));
      icons.add(const Spacer());
      icons.add(Image.asset('images/painScale2.png', scale: 4.0));
      icons.add(const Spacer());
      icons.add(Image.asset('images/painScale4.png', scale: 4.0));
      icons.add(const Spacer());
      icons.add(Image.asset('images/painScale6.png', scale: 4.0));
      icons.add(const Spacer());
      icons.add(Image.asset('images/painScale8.png', scale: 4.0));
      icons.add(const Spacer());
      icons.add(Image.asset('images/painScale10.png', scale: 4.0));
    }

    return icons;
  }

  String _getLabel() {
    switch (widget.scale.getScale()!.floor()) {
      case 0:
        _activeColor = TFSEColors.painScale0;
        _thumbColor = TFSEColors.painScale0;
        _description = Constants.painScale0;
        break;
      case 1:
        _activeColor = TFSEColors.painScale0;
        _thumbColor = TFSEColors.painScale0;
        _description = Constants.painScale1;
        break;
      case 2:
        _activeColor = TFSEColors.painScale2;
        _thumbColor = TFSEColors.painScale2;
        _description = Constants.painScale2;
        break;
      case 3:
        _activeColor = TFSEColors.painScale2;
        _thumbColor = TFSEColors.painScale2;
        _description = Constants.painScale3;
        break;
      case 4:
        _activeColor = TFSEColors.painScale4;
        _thumbColor = TFSEColors.painScale4;
        _description = Constants.painScale4;
        break;
      case 5:
        _activeColor = TFSEColors.painScale4;
        _thumbColor = TFSEColors.painScale4;
        _description = Constants.painScale5;
        break;
      case 6:
        _activeColor = TFSEColors.painScale6;
        _thumbColor = TFSEColors.painScale6;
        _description = Constants.painScale6;
        break;
      case 7:
        _activeColor = TFSEColors.painScale6;
        _thumbColor = TFSEColors.painScale6;
        _description = Constants.painScale7;
        break;
      case 8:
        _activeColor = TFSEColors.painScale8;
        _thumbColor = TFSEColors.painScale8;
        _description = Constants.painScale8;
        break;
      case 9:
        _activeColor = TFSEColors.painScale8;
        _thumbColor = TFSEColors.painScale8;
        _description = Constants.painScale9;
        break;
      case 10:
        _activeColor = TFSEColors.painScale10;
        _thumbColor = TFSEColors.painScale10;
        _description = Constants.painScale10;
        break;
    }
    return widget.scale.getScale()!.floor().toString();
  }
}
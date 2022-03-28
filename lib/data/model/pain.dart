import '../../ui/interfaces/interface_slider_scale.dart';

class Pain implements InterfaceSliderScale {
  String description = '';
  double scale = 0.0;

  Pain(this.description, this.scale);

  Pain.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        scale = json['scale'];

  Map toJson() => {
    'description': description,
    'scale': scale,
  };

  String getDescription() {
    return description;
  }

  @override
  double getScale() {
    return scale;
  }

  void setDescription(String description) {
    this.description = description;
  }

  @override
  void setScale(double scale) {
    this.scale = scale;
  }
}
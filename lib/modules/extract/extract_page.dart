import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_widget.dart';

class ExtactPage extends StatefulWidget {
  const ExtactPage({Key? key}) : super(key: key);

  @override
  _ExtactPageState createState() => _ExtactPageState();
}

class _ExtactPageState extends State<ExtactPage> {
  final controller = BoletoListController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Row(
            children: [
              Text(
                "Meu extrato",
                style: TextStyles.titleBoldHeading,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: BoletoListWidget(
            controller: controller,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tornaument/pages/home/home_controller.dart';
import 'package:tornaument/widgets/export.dart';

class HomeTorneos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (_) => Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Torneos vigentes",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return TarjetaTorneo();
                      },
                      childCount: 20,
                    ),
                  )
                ],
              ),
            ));
  }
}

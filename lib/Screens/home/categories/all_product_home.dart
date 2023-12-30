import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/controller/product_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AllProductHomePage extends StatefulWidget {
  const AllProductHomePage({super.key});

  @override
  State<AllProductHomePage> createState() => _AllProductHomePageState();
}

class _AllProductHomePageState extends State<AllProductHomePage> {
  /// register apiproduct controller
  final controller = Get.put(ApiProductController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        GetBuilder<ApiProductController>(
          builder: (_) {
            if (controller.isLoading) {
              return const Center(
                  child: Center(child: CircularProgressIndicator()));
            }
            if (controller.products.isEmpty) {
              return const Center(child: Text('No Data'));
            }
            return Expanded(
              child: RefreshIndicator(
                onRefresh: () {
                  return controller.refreshProduct();
                },
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  itemBuilder: (context, index) {
                    if (controller.products.length <= index) {
                      return Container();
                    }
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              controller.products[index].image!,
                              fit: BoxFit.cover,
                              height: 120,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Divider(
                            height: 1,
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              controller.products[index].title!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.alatsi(
                                textStyle: const TextStyle(
                                  color: Color.fromARGB(141, 0, 0, 0),
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            'NPR ${controller.products[index].price}',
                            style: GoogleFonts.alatsi(
                              textStyle: const TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

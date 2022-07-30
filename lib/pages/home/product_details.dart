import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home/product_Controller.dart';
import '../../utils/_utils.dart';


class ProductDetails extends StatelessWidget {
  int? productIndex;

  ProductDetails({this.productIndex});

  final ProductController _productController = Get.find();
  final wishListAdded = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    _productController.allProduct[productIndex!]['images'][0]['src'] ==
                        null ||
                        _productController.allProduct[productIndex!]['images'][0]['src'] ==
                            ''
                // ||
                        // _productController.searchedProduct[productIndex!]
                        // ['image_url'] ==
                        //     'null'
                        ? AspectRatio(
                        aspectRatio: 1,
                        child: Center(
                            child: Image.asset(
                              'assets/placeholders/emptyImage.png',
                            )))
                        : Center(
                      child: CachedNetworkImage(

                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                        // fit: BoxFit.cover,
                        // height: 200,
                        // width: MediaQuery.of(context).size.width,
                        imageUrl: _productController.allProduct[productIndex!]['images'][0]['src'],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${_productController.allProduct[productIndex!]['name']}',
                                  style: const TextStyle(
                                      fontSize: 24, fontWeight: FontWeight.w600),
                                ),
                                // Text(
                                //     'In Stock: ${_productController.searchedProduct[productIndex!]['stock']}')
                              ],
                            ),
                          ),
                          // SizedBox(height: 20,),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${'details'.tr}: ',
                                  style: const TextStyle(fontSize: 18),
                                ),
                                Obx(()=> wishListAdded.value == 0 ?IconButton(
                                    onPressed: (){
                                      wishListAdded.value = 1;
                                    },
                                    icon: Icon(Icons.favorite_border, color: Colors.red,)

                                ): IconButton(
                                    onPressed: (){
                                      wishListAdded.value = 0;
                                    },
                                    icon: Icon(Icons.favorite, color: Colors.red,)

                                ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //       left: 15.0, right: 15, bottom: 10),
                          //   child: _productController.allProduct[productIndex!]['images']
                          //   ['description'] ==
                          //       null
                          //       ?  Text(
                          //     'not_given'.tr,
                          //     style: const TextStyle(fontSize: 18),
                          //   )
                          //       : Text(
                          //     '${_productController.searchedProduct[productIndex!]['description']}',
                          //     style: const TextStyle(fontSize: 18),
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          //   child: Text(
                          //     '${'price'.tr}: ৳${_productController.searchedProduct[productIndex!]['selling_price']}',
                          //     style: const TextStyle(fontSize: 18),
                          //   ),
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                          //   child: Align(
                          //     alignment: Alignment.bottomCenter,
                          //     child: InkWell(
                          //       onTap: () {
                          //         bool itemFound = false;
                          //         for (var i = 0;
                          //         i < _productController.cart.length;
                          //         i++) {
                          //           if (_productController
                          //               .cart.isNotEmpty &&
                          //               _productController.searchedProduct[
                          //               productIndex!]['id'] ==
                          //                   _productController
                          //                       .cart[i].product['id']) {
                          //             itemFound = true;
                          //             _productController.cart[i].quantity++;
                          //             _productController.totalCartValue
                          //                 .value = _productController
                          //                 .totalCartValue.value +
                          //                 _productController
                          //                     .searchedProduct[
                          //                 productIndex!]
                          //                 ['selling_price'];
                          //             _productController.shippingCost
                          //                 .value = _productController
                          //                 .shippingCost.value +
                          //                 _productController
                          //                     .searchedProduct[
                          //                 productIndex!]
                          //                 ['shipping_cost'];
                          //             ScaffoldMessenger.of(context).showSnackBar(
                          //                 SnackBar(content: Text('product_number_increased'.tr),
                          //                   duration: const Duration(milliseconds: 500),));
                          //             break;
                          //           } else {
                          //             print('Item Not Exists');
                          //           }
                          //         }
                          //         if (itemFound == false) {
                          //           _productController.cart.add(
                          //               CartModelClass(
                          //                   quantity: 1,
                          //                   product: _productController
                          //                       .searchedProduct[
                          //                   productIndex!]));
                          //           _productController.totalCartValue
                          //               .value = _productController
                          //               .totalCartValue.value +
                          //               _productController.searchedProduct[
                          //               productIndex!]['selling_price'];
                          //           _productController.shippingCost
                          //               .value = _productController
                          //               .shippingCost.value +
                          //               _productController.searchedProduct[
                          //               productIndex!]['shipping_cost'];
                          //           ScaffoldMessenger.of(context).showSnackBar(
                          //             SnackBar(content: Text('product_added'.tr),
                          //               duration: const Duration(milliseconds: 500),
                          //             ),
                          //           );
                          //           // print(itemFound);
                          //           // print(itemFound);
                          //           // Get.defaultDialog(
                          //           //     title: 'Product is Already Added on the Cart',
                          //           //     onCancel: (){
                          //           //       Get.back();
                          //           //     },
                          //           //     middleText: ''
                          //           // );
                          //         }
                          //       },
                          //       child: Container(
                          //         width: double.infinity,
                          //         decoration: BoxDecoration(
                          //             color: primaryColor,
                          //             borderRadius:
                          //             BorderRadius.circular(6)),
                          //         child:  Padding(
                          //           padding: const EdgeInsets.all(8.0),
                          //           child: Text(
                          //             'add_to_cart'.tr,
                          //             textAlign: TextAlign.center,
                          //             style: const TextStyle(
                          //                 fontSize: 18,
                          //                 fontWeight: FontWeight.w600,
                          //                 color: Colors.white),
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: primaryColor,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    //   child: Stack(
                    //     children: [
                    //       Positioned(
                    //           top: 5,
                    //           right: 5,
                    //           child: Obx(
                    //                 () => Text(
                    //               '${_productController.cart.length}',
                    //               style: TextStyle(color: primaryColor),
                    //             ),
                    //           )),
                    //       IconButton(
                    //         onPressed: () {
                    //           Get.to(Cart());
                    //         },
                    //         icon: Icon(
                    //           Icons.shopping_cart_outlined,
                    //           color: primaryColor,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // )
                  ],
                ),

              ],
            ),
          )),
    );
  }
}

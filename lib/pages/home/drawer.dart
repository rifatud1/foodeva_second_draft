import 'package:flutter/material.dart';
import 'package:foodeva_second_draft/controllers/login_registration/login_registration_controller.dart';
import 'package:get/get.dart';

import '../../utils/_utils.dart';

LoginRegistrationController _loginRegistrationController = Get.put(LoginRegistrationController());
Widget drawer(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return
  //   Obx(() => _loginRegistrationController.loggedInDrawer.value == 0
  //     ? Drawer(
  //   width: size.width > 600 ? size.width / 2 : size.width / 1.5,
  //   child: SafeArea(
  //     child: Container(
  //       color: primaryColor,
  //       child: Column(
  //         children: [
  //           Expanded(
  //             flex: size.height < 300 ? 2 : 0,
  //             child: Container(
  //               color: primaryColor,
  //               width: size.width,
  //               child: Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: Center(
  //                   child: TextButton(
  //                     onPressed: () {
  //                       Get.to(Login());
  //                     },
  //                     child: Text('login_or_create_an_account'.tr,
  //                         style: const TextStyle(color: Colors.white)),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Expanded(
  //             flex: size.height < 300 ? 3 : 3,
  //             child: Container(
  //               // height: size.height,
  //               decoration: const BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.only(
  //                       topLeft: Radius.circular(15),
  //                       topRight: Radius.circular(15))),
  //               child: Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: Obx(() => ListView(
  //                   shrinkWrap: true,
  //                   children: [
  //                     InkWell(
  //                       onTap: () {
  //                         _loginRegistraionController
  //                             .activeHomeMenu.value = 1;
  //                         _loginRegistraionController
  //                             .activeProfileMenu.value = 0;
  //                         _loginRegistraionController
  //                             .activeCategoryMenu.value = 0;
  //                         _loginRegistraionController
  //                             .activeLoginMenu.value = 0;
  //                         Get.to(HomePage());
  //                       },
  //                       child: Container(
  //                         decoration: BoxDecoration(
  //                             color: _loginRegistraionController
  //                                 .activeHomeMenu.value ==
  //                                 0
  //                                 ? Colors.transparent
  //                                 : Colors.grey.withOpacity(.35),
  //                             borderRadius: BorderRadius.circular(6)),
  //                         child: Padding(
  //                           padding: const EdgeInsets.all(4.0),
  //                           child: Row(
  //                             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                             children: [
  //                               Icon(
  //                                 Icons.home,
  //                                 color: primaryColor,
  //                               ),
  //                               const SizedBox(
  //                                 width: 20,
  //                               ),
  //                               Text(
  //                                 'home'.tr,
  //                                 style:
  //                                 TextStyle(color: primaryColor),
  //                               )
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     const SizedBox(
  //                       height: 10,
  //                     ),
  //                     InkWell(
  //                       onTap: () {
  //                         _loginRegistraionController
  //                             .activeProfileMenu.value = 1;
  //                         _loginRegistraionController
  //                             .activeHomeMenu.value = 0;
  //                         _loginRegistraionController
  //                             .activeCategoryMenu.value = 0;
  //                         _loginRegistraionController
  //                             .activeLoginMenu.value = 0;
  //                         Get.to(Login());
  //                       },
  //                       child: Container(
  //                         decoration: BoxDecoration(
  //                             color: _loginRegistraionController
  //                                 .activeProfileMenu.value ==
  //                                 0
  //                                 ? Colors.transparent
  //                                 : Colors.grey.withOpacity(.35),
  //                             borderRadius: BorderRadius.circular(6)),
  //                         child: Padding(
  //                           padding: const EdgeInsets.all(4.0),
  //                           child: Row(
  //                             children: [
  //                               Icon(
  //                                 Icons.person,
  //                                 color: primaryColor,
  //                               ),
  //                               const SizedBox(
  //                                 width: 20,
  //                               ),
  //                               Text(
  //                                 'profile'.tr,
  //                                 style:
  //                                 TextStyle(color: primaryColor),
  //                               )
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     const SizedBox(
  //                       height: 10,
  //                     ),
  //                     InkWell(
  //                       onTap: () {
  //                         _loginRegistraionController
  //                             .activeCategoryMenu.value = 1;
  //                         _loginRegistraionController
  //                             .activeProfileMenu.value = 0;
  //                         _loginRegistraionController
  //                             .activeHomeMenu.value = 0;
  //                         _loginRegistraionController
  //                             .activeLoginMenu.value = 0;
  //                         Get.to(Categories());
  //                       },
  //                       child: Container(
  //                         decoration: BoxDecoration(
  //                             color: _loginRegistraionController
  //                                 .activeCategoryMenu.value ==
  //                                 0
  //                                 ? Colors.transparent
  //                                 : Colors.grey.withOpacity(.35),
  //                             borderRadius: BorderRadius.circular(6)),
  //                         child: Padding(
  //                           padding: const EdgeInsets.all(4.0),
  //                           child: Row(
  //                             children: [
  //                               Icon(
  //                                 Icons.category,
  //                                 color: primaryColor,
  //                               ),
  //                               const SizedBox(
  //                                 width: 20,
  //                               ),
  //                               Text(
  //                                 'categories'.tr,
  //                                 style:
  //                                 TextStyle(color: primaryColor),
  //                               )
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     const SizedBox(
  //                       height: 10,
  //                     ),
  //                     InkWell(
  //                       onTap: () {
  //                         _loginRegistraionController
  //                             .activeLoginMenu.value = 1;
  //                         _loginRegistraionController
  //                             .activeCategoryMenu.value = 0;
  //                         _loginRegistraionController
  //                             .activeProfileMenu.value = 0;
  //                         _loginRegistraionController
  //                             .activeHomeMenu.value = 0;
  //                         Get.to(Login());
  //                       },
  //                       child: Container(
  //                         decoration: BoxDecoration(
  //                             color: _loginRegistraionController
  //                                 .activeLoginMenu.value ==
  //                                 0
  //                                 ? Colors.transparent
  //                                 : Colors.grey.withOpacity(.35),
  //                             borderRadius: BorderRadius.circular(6)),
  //                         child: Padding(
  //                           padding: const EdgeInsets.all(4.0),
  //                           child: Row(
  //                             children: [
  //                               Icon(
  //                                 Icons.login,
  //                                 color: primaryColor,
  //                               ),
  //                               const SizedBox(
  //                                 width: 20,
  //                               ),
  //                               Text(
  //                                 'sign_in'.tr,
  //                                 style:
  //                                 TextStyle(color: primaryColor),
  //                               )
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 )),
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   ),
  // )
  //     :
    Drawer(
    width: size.width > 600 ? size.width / 2 : size.width / 1.5,
    child: SafeArea(
      child: Container(
        // height: size.height,
        color: primaryColor,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: size.height < 300 ? 2 : 0,
                  child: Container(
                    color: primaryColor,
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Obx(
                            //       () => _loginRegistraionController
                            //       .profileDetails
                            //       .value['image_url'] ==
                            //       null
                            //       ? Container(
                            //     // height: size.height / 5,
                            //     decoration: BoxDecoration(
                            //       borderRadius:
                            //       BorderRadius.circular(10),
                            //       color: Colors.white,
                            //     ),
                            //     child: Padding(
                            //       padding:
                            //       const EdgeInsets.all(8.0),
                            //       child: Image.asset(
                            //         'assets/placeholders/bee.png',
                            //         height: 50,
                            //       ),
                            //     ),
                            //   )
                            //       : Container(
                            //     decoration: BoxDecoration(
                            //       borderRadius:
                            //       BorderRadius.circular(10),
                            //       color: Colors.white,
                            //     ),
                            //     child: Padding(
                            //       padding:
                            //       const EdgeInsets.all(8.0),
                            //       child: CachedNetworkImage(
                            //         imageUrl:
                            //         _loginRegistraionController
                            //             .profileDetails
                            //             .value['image_url'],
                            //         height: 70,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // const SizedBox(
                            //   height: 10,
                            // ),
                            // Obx(() => Text(
                            //   '${_loginRegistraionController.profileDetails.value['name'] ?? '[Not Given]'}',
                            //   style: const TextStyle(
                            //       fontSize: 18,
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.white),
                            // )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: size.height < 300 ? 3 : 3,
                  child: Container(
                    // height: size.height,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          InkWell(
                            onTap: () {
                              // _loginRegistraionController
                              //     .activeHomeMenu.value = 1;
                              // _loginRegistraionController
                              //     .activeProfileMenu.value = 0;
                              // _loginRegistraionController
                              //     .activeShippingMenu.value = 0;
                              // _loginRegistraionController
                              //     .activeCategoryMenu.value = 0;
                              // Get.to(HomePage());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                // color: _loginRegistraionController
                                //     .activeHomeMenu.value ==
                                //     0
                                //     ? Colors.transparent
                                //     : Colors.grey.withOpacity(.35),
                                  borderRadius:
                                  BorderRadius.circular(6)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: primaryColor,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'home'.tr,
                                      style: TextStyle(
                                          color: primaryColor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              // _loginRegistraionController
                              //     .activeProfileMenu.value = 1;
                              // _loginRegistraionController
                              //     .activeHomeMenu.value = 0;
                              // _loginRegistraionController
                              //     .activeShippingMenu.value = 0;
                              // _loginRegistraionController
                              //     .activeCategoryMenu.value = 0;
                              // Get.to(Login());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                // color: _loginRegistraionController
                                //     .activeProfileMenu
                                //     .value ==
                                //     0
                                //     ? Colors.transparent
                                //     : Colors.grey.withOpacity(.35),
                                  borderRadius:
                                  BorderRadius.circular(6)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: primaryColor,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'profile'.tr,
                                      style: TextStyle(
                                          color: primaryColor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              // _loginRegistraionController
                              //     .activeShippingMenu.value = 1;
                              // _loginRegistraionController
                              //     .activeProfileMenu.value = 0;
                              // _loginRegistraionController
                              //     .activeHomeMenu.value = 0;
                              // _loginRegistraionController
                              //     .activeCategoryMenu.value = 0;
                              // Get.to(ShippingInfo());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                // color: _loginRegistraionController
                                //     .activeShippingMenu
                                //     .value ==
                                //     0
                                //     ? Colors.transparent
                                //     : Colors.grey.withOpacity(.35),
                                  borderRadius:
                                  BorderRadius.circular(6)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_sharp,
                                      color: primaryColor,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'shipping_address'.tr,
                                      style: TextStyle(
                                          color: primaryColor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              // _loginRegistraionController
                              //     .activeCategoryMenu.value = 1;
                              // _loginRegistraionController
                              //     .activeShippingMenu.value = 0;
                              // _loginRegistraionController
                              //     .activeProfileMenu.value = 0;
                              // _loginRegistraionController
                              //     .activeHomeMenu.value = 0;
                              // Get.to(Categories());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                // color: _loginRegistraionController
                                //     .activeCategoryMenu
                                //     .value ==
                                //     0
                                //     ? Colors.transparent
                                //     : Colors.grey.withOpacity(.35),
                                  borderRadius:
                                  BorderRadius.circular(6)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.category,
                                      color: primaryColor,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'categories'.tr,
                                      style: TextStyle(
                                          color: primaryColor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.bookmark_border,
                                  color: primaryColor,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'order_status'.tr,
                                  style:
                                  TextStyle(color: primaryColor),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Icon(Icons.favorite,
                                    color: primaryColor),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'wish_list'.tr,
                                  style:
                                  TextStyle(color: primaryColor),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                bottom: 20,
                left: 15,
                child: InkWell(
                  onTap: () {
                    Get.defaultDialog(
                      middleText: '',
                      title: 'are_you_sure_you_want_to_logout'.tr,
                      confirm: InkWell(
                        onTap: () {
                          // _productController.cart.value = [];
                          // box.remove('token');
                          // _loginRegistraionController
                          //     .loggedInDrawer.value = 0;
                          // _loginRegistraionController
                          //     .loggedOutDrawer.value = 1;
                          // Get.back();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'logout'.tr,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      cancel: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'cancel'.tr,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: primaryColor,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'logout'.tr,
                        style:
                        TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    ),
  );
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodeva_second_draft/controllers/home/product_Controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {


  final ProductController _productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('All Products',style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Obx(()=>ListView.builder(
                  shrinkWrap: true,
                  itemCount: _productController.allProduct.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _productController.allProduct[index]['images'][0]['src'] == null ?
                          Image.asset('assets/images/emptyImage.png'):
                          CachedNetworkImage(imageUrl: '${_productController.allProduct[index]['images'][0]['src']}'),
                          SizedBox(height: 10,),
                          Text('${_productController.allProduct[index]['name']}')
                        ],
                      ),
                    );
                  },
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'dart:core';

List<GetProducts> getAllProducts(dynamic str) =>
    List<GetProducts>.from(str.map((x) =>
        GetProducts.fromJson(x)));
class GetProducts {
  final int? id;
  final String? name;
  final String? slug;
  final String? permalink;
  final String? dateCreated;
  final String? dateCreatedGmt;
  final String? dateModified;
  final String? dateModifiedGmt;
  final String? type;
  final String? status;
  final bool? featured;
  final String? catalogVisibility;
  final String? description;
  final String? shortDescription;
  final String? sku;
  final String? price;
  final String? regularPrice;
  final String? salePrice;
  final dynamic dateOnSaleFrom;
  final dynamic dateOnSaleFromGmt;
  final dynamic dateOnSaleTo;
  final dynamic dateOnSaleToGmt;
  final bool? onSale;
  final bool? purchasable;
  final int? totalSales;
  final bool? virtual;
  final bool? downloadable;
  final List<Downloads>? downloads;
  final int? downloadLimit;
  final int? downloadExpiry;
  final String? externalUrl;
  final String? buttonText;
  final String? taxStatus;
  final String? taxClass;
  final bool? manageStock;
  final dynamic stockQuantity;
  final String? backorders;
  final bool? backordersAllowed;
  final bool? backordered;
  final dynamic lowStockAmount;
  final bool? soldIndividually;
  final String? weight;
  final Dimensions? dimensions;
  final bool? shippingRequired;
  final bool? shippingTaxable;
  final String? shippingClass;
  final int? shippingClassId;
  final bool? reviewsAllowed;
  final String? averageRating;
  final int? ratingCount;
  final List<dynamic>? upsellIds;
  final List<dynamic>? crossSellIds;
  final int? parentId;
  final String? purchaseNote;
  final List<Categories>? categories;
  final List<Tags>? tags;
  final List<Images>? images;
  final List<dynamic>? attributes;
  final List<dynamic>? defaultAttributes;
  final List<dynamic>? variations;
  final List<dynamic>? groupedProducts;
  final int? menuOrder;
  final String? priceHtml;
  final List<dynamic>? relatedIds;
  final List<MetaData>? metaData;
  final String? stockStatus;
  final bool? hasOptions;
  final String? yoastHead;
  final YoastHeadJson? yoastHeadJson;
  final Links? links;

  GetProducts({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.lowStockAmount,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.priceHtml,
    this.relatedIds,
    this.metaData,
    this.stockStatus,
    this.hasOptions,
    this.yoastHead,
    this.yoastHeadJson,
    this.links,
  });

  GetProducts.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        slug = json['slug'] as String?,
        permalink = json['permalink'] as String?,
        dateCreated = json['date_created'] as String?,
        dateCreatedGmt = json['date_created_gmt'] as String?,
        dateModified = json['date_modified'] as String?,
        dateModifiedGmt = json['date_modified_gmt'] as String?,
        type = json['type'] as String?,
        status = json['status'] as String?,
        featured = json['featured'] as bool?,
        catalogVisibility = json['catalog_visibility'] as String?,
        description = json['description'] as String?,
        shortDescription = json['short_description'] as String?,
        sku = json['sku'] as String?,
        price = json['price'] as String?,
        regularPrice = json['regular_price'] as String?,
        salePrice = json['sale_price'] as String?,
        dateOnSaleFrom = json['date_on_sale_from'],
        dateOnSaleFromGmt = json['date_on_sale_from_gmt'],
        dateOnSaleTo = json['date_on_sale_to'],
        dateOnSaleToGmt = json['date_on_sale_to_gmt'],
        onSale = json['on_sale'] as bool?,
        purchasable = json['purchasable'] as bool?,
        totalSales = json['total_sales'] as int?,
        virtual = json['virtual'] as bool?,
        downloadable = json['downloadable'] as bool?,
        downloads = (json['downloads'] as List?)?.map((dynamic e) => Downloads.fromJson(e as Map<String,dynamic>)).toList(),
        downloadLimit = json['download_limit'] as int?,
        downloadExpiry = json['download_expiry'] as int?,
        externalUrl = json['external_url'] as String?,
        buttonText = json['button_text'] as String?,
        taxStatus = json['tax_status'] as String?,
        taxClass = json['tax_class'] as String?,
        manageStock = json['manage_stock'] as bool?,
        stockQuantity = json['stock_quantity'],
        backorders = json['backorders'] as String?,
        backordersAllowed = json['backorders_allowed'] as bool?,
        backordered = json['backordered'] as bool?,
        lowStockAmount = json['low_stock_amount'],
        soldIndividually = json['sold_individually'] as bool?,
        weight = json['weight'] as String?,
        dimensions = (json['dimensions'] as Map<String,dynamic>?) != null ? Dimensions.fromJson(json['dimensions'] as Map<String,dynamic>) : null,
        shippingRequired = json['shipping_required'] as bool?,
        shippingTaxable = json['shipping_taxable'] as bool?,
        shippingClass = json['shipping_class'] as String?,
        shippingClassId = json['shipping_class_id'] as int?,
        reviewsAllowed = json['reviews_allowed'] as bool?,
        averageRating = json['average_rating'] as String?,
        ratingCount = json['rating_count'] as int?,
        upsellIds = json['upsell_ids'] as List?,
        crossSellIds = json['cross_sell_ids'] as List?,
        parentId = json['parent_id'] as int?,
        purchaseNote = json['purchase_note'] as String?,
        categories = (json['categories'] as List?)?.map((dynamic e) => Categories.fromJson(e as Map<String,dynamic>)).toList(),
        tags = (json['tags'] as List?)?.map((dynamic e) => Tags.fromJson(e as Map<String,dynamic>)).toList(),
        images = (json['images'] as List?)?.map((dynamic e) => Images.fromJson(e as Map<String,dynamic>)).toList(),
        attributes = json['attributes'] as List?,
        defaultAttributes = json['default_attributes'] as List?,
        variations = json['variations'] as List?,
        groupedProducts = json['grouped_products'] as List?,
        menuOrder = json['menu_order'] as int?,
        priceHtml = json['price_html'] as String?,
        relatedIds = json['related_ids'] as List?,
        metaData = (json['meta_data'] as List?)?.map((dynamic e) => MetaData.fromJson(e as Map<String,dynamic>)).toList(),
        stockStatus = json['stock_status'] as String?,
        hasOptions = json['has_options'] as bool?,
        yoastHead = json['yoast_head'] as String?,
        yoastHeadJson = (json['yoast_head_json'] as Map<String,dynamic>?) != null ? YoastHeadJson.fromJson(json['yoast_head_json'] as Map<String,dynamic>) : null,
        links = (json['_links'] as Map<String,dynamic>?) != null ? Links.fromJson(json['_links'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'slug' : slug,
    'permalink' : permalink,
    'date_created' : dateCreated,
    'date_created_gmt' : dateCreatedGmt,
    'date_modified' : dateModified,
    'date_modified_gmt' : dateModifiedGmt,
    'type' : type,
    'status' : status,
    'featured' : featured,
    'catalog_visibility' : catalogVisibility,
    'description' : description,
    'short_description' : shortDescription,
    'sku' : sku,
    'price' : price,
    'regular_price' : regularPrice,
    'sale_price' : salePrice,
    'date_on_sale_from' : dateOnSaleFrom,
    'date_on_sale_from_gmt' : dateOnSaleFromGmt,
    'date_on_sale_to' : dateOnSaleTo,
    'date_on_sale_to_gmt' : dateOnSaleToGmt,
    'on_sale' : onSale,
    'purchasable' : purchasable,
    'total_sales' : totalSales,
    'virtual' : virtual,
    'downloadable' : downloadable,
    'downloads' : downloads?.map((e) => e.toJson()).toList(),
    'download_limit' : downloadLimit,
    'download_expiry' : downloadExpiry,
    'external_url' : externalUrl,
    'button_text' : buttonText,
    'tax_status' : taxStatus,
    'tax_class' : taxClass,
    'manage_stock' : manageStock,
    'stock_quantity' : stockQuantity,
    'backorders' : backorders,
    'backorders_allowed' : backordersAllowed,
    'backordered' : backordered,
    'low_stock_amount' : lowStockAmount,
    'sold_individually' : soldIndividually,
    'weight' : weight,
    'dimensions' : dimensions?.toJson(),
    'shipping_required' : shippingRequired,
    'shipping_taxable' : shippingTaxable,
    'shipping_class' : shippingClass,
    'shipping_class_id' : shippingClassId,
    'reviews_allowed' : reviewsAllowed,
    'average_rating' : averageRating,
    'rating_count' : ratingCount,
    'upsell_ids' : upsellIds,
    'cross_sell_ids' : crossSellIds,
    'parent_id' : parentId,
    'purchase_note' : purchaseNote,
    'categories' : categories?.map((e) => e.toJson()).toList(),
    'tags' : tags?.map((e) => e.toJson()).toList(),
    'images' : images?.map((e) => e.toJson()).toList(),
    'attributes' : attributes,
    'default_attributes' : defaultAttributes,
    'variations' : variations,
    'grouped_products' : groupedProducts,
    'menu_order' : menuOrder,
    'price_html' : priceHtml,
    'related_ids' : relatedIds,
    'meta_data' : metaData?.map((e) => e.toJson()).toList(),
    'stock_status' : stockStatus,
    'has_options' : hasOptions,
    'yoast_head' : yoastHead,
    'yoast_head_json' : yoastHeadJson?.toJson(),
    '_links' : links?.toJson()
  };
}

class Downloads {
  final String? id;
  final String? name;
  final String? file;

  Downloads({
    this.id,
    this.name,
    this.file,
  });

  Downloads.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?,
        file = json['file'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'file' : file
  };
}

class Dimensions {
  final String? length;
  final String? width;
  final String? height;

  Dimensions({
    this.length,
    this.width,
    this.height,
  });

  Dimensions.fromJson(Map<String, dynamic> json)
      : length = json['length'] as String?,
        width = json['width'] as String?,
        height = json['height'] as String?;

  Map<String, dynamic> toJson() => {
    'length' : length,
    'width' : width,
    'height' : height
  };
}

class Categories {
  final int? id;
  final String? name;
  final String? slug;

  Categories({
    this.id,
    this.name,
    this.slug,
  });

  Categories.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        slug = json['slug'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'slug' : slug
  };
}

class Tags {
  final int? id;
  final String? name;
  final String? slug;

  Tags({
    this.id,
    this.name,
    this.slug,
  });

  Tags.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        slug = json['slug'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'slug' : slug
  };
}

class Images {
  final int? id;
  final String? dateCreated;
  final String? dateCreatedGmt;
  final String? dateModified;
  final String? dateModifiedGmt;
  final String? src;
  final String? name;
  final String? alt;

  Images({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  Images.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        dateCreated = json['date_created'] as String?,
        dateCreatedGmt = json['date_created_gmt'] as String?,
        dateModified = json['date_modified'] as String?,
        dateModifiedGmt = json['date_modified_gmt'] as String?,
        src = json['src'] as String?,
        name = json['name'] as String?,
        alt = json['alt'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'date_created' : dateCreated,
    'date_created_gmt' : dateCreatedGmt,
    'date_modified' : dateModified,
    'date_modified_gmt' : dateModifiedGmt,
    'src' : src,
    'name' : name,
    'alt' : alt
  };
}

class MetaData {
  final int? id;
  final String? key;
  final String? value;

  MetaData({
    this.id,
    this.key,
    this.value,
  });

  MetaData.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        key = json['key'] as String?,
        value = json['value'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'key' : key,
    'value' : value
  };
}

class YoastHeadJson {
  final String? title;
  final String? description;
  final Robots? robots;
  final String? canonical;
  final String? ogLocale;
  final String? ogType;
  final String? ogTitle;
  final String? ogDescription;
  final String? ogUrl;
  final String? ogSiteName;
  final String? articlePublisher;
  final String? articleModifiedTime;
  final List<OgImage>? ogImage;
  final String? twitterCard;
  final String? twitterSite;
  // final Schema? schema;

  YoastHeadJson({
    this.title,
    this.description,
    this.robots,
    this.canonical,
    this.ogLocale,
    this.ogType,
    this.ogTitle,
    this.ogDescription,
    this.ogUrl,
    this.ogSiteName,
    this.articlePublisher,
    this.articleModifiedTime,
    this.ogImage,
    this.twitterCard,
    this.twitterSite,
    // this.schema,
  });

  YoastHeadJson.fromJson(Map<String, dynamic> json)
      : title = json['title'] as String?,
        description = json['description'] as String?,
        robots = (json['robots'] as Map<String,dynamic>?) != null ? Robots.fromJson(json['robots'] as Map<String,dynamic>) : null,
        canonical = json['canonical'] as String?,
        ogLocale = json['og_locale'] as String?,
        ogType = json['og_type'] as String?,
        ogTitle = json['og_title'] as String?,
        ogDescription = json['og_description'] as String?,
        ogUrl = json['og_url'] as String?,
        ogSiteName = json['og_site_name'] as String?,
        articlePublisher = json['article_publisher'] as String?,
        articleModifiedTime = json['article_modified_time'] as String?,
        ogImage = (json['og_image'] as List?)?.map((dynamic e) => OgImage.fromJson(e as Map<String,dynamic>)).toList(),
        twitterCard = json['twitter_card'] as String?,
        twitterSite = json['twitter_site'] as String?;
        // schema = (json['schema'] as Map<String,dynamic>?) != null ? Schema.fromJson(json['schema'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'title' : title,
    'description' : description,
    'robots' : robots?.toJson(),
    'canonical' : canonical,
    'og_locale' : ogLocale,
    'og_type' : ogType,
    'og_title' : ogTitle,
    'og_description' : ogDescription,
    'og_url' : ogUrl,
    'og_site_name' : ogSiteName,
    'article_publisher' : articlePublisher,
    'article_modified_time' : articleModifiedTime,
    'og_image' : ogImage?.map((e) => e.toJson()).toList(),
    'twitter_card' : twitterCard,
    'twitter_site' : twitterSite,
    // 'schema' : schema?.toJson()
  };
}

class Robots {
  final String? index;
  final String? follow;
  final String? max_snippet;
  final String? max_image_preview;
  final String? max_video_preview;

  Robots({
    this.index,
    this.follow,
    this.max_snippet,
    this.max_image_preview,
    this.max_video_preview,
  });

  Robots.fromJson(Map<String, dynamic> json)
      : index = json['index'] as String?,
        follow = json['follow'] as String?,
        max_snippet = json['max-snippet'] as String?,
        max_image_preview = json['max-image-preview'] as String?,
        max_video_preview = json['max-video-preview'] as String?;

  Map<String, dynamic> toJson() => {
    'index' : index,
    'follow' : follow,
    'max-snippet' : max_snippet,
    'max-image-preview' : max_image_preview,
    'max-video-preview' : max_video_preview
  };
}

class OgImage {
  final int? width;
  final int? height;
  final String? url;
  final String? type;

  OgImage({
    this.width,
    this.height,
    this.url,
    this.type,
  });

  OgImage.fromJson(Map<String, dynamic> json)
      : width = json['width'] as int?,
        height = json['height'] as int?,
        url = json['url'] as String?,
        type = json['type'] as String?;

  Map<String, dynamic> toJson() => {
    'width' : width,
    'height' : height,
    'url' : url,
    'type' : type
  };
}








class Links {
final List<Self>? self;
final List<Collection>? collection;

Links({
this.self,
this.collection,
});

Links.fromJson(Map<String, dynamic> json)
    : self = (json['self'] as List?)?.map((dynamic e) => Self.fromJson(e as Map<String,dynamic>)).toList(),
collection = (json['collection'] as List?)?.map((dynamic e) => Collection.fromJson(e as Map<String,dynamic>)).toList();

Map<String, dynamic> toJson() => {
'self' : self?.map((e) => e.toJson()).toList(),
'collection' : collection?.map((e) => e.toJson()).toList()
};
}

class Self {
final String? href;

Self({
this.href,
});

Self.fromJson(Map<String, dynamic> json)
    : href = json['href'] as String?;

Map<String, dynamic> toJson() => {
'href' : href
};
}

class Collection {
final String? href;

Collection({
this.href,
});

Collection.fromJson(Map<String, dynamic> json)
    : href = json['href'] as String?;

Map<String, dynamic> toJson() => {
'href' : href
};
}
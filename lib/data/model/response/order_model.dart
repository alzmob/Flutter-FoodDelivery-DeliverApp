class OrderModel {
  int id;
  int userId;
  double orderAmount;
  double couponDiscountAmount;
  String paymentStatus;
  String orderStatus;
  double totalTaxAmount;
  String paymentMethod;
  String transactionReference;
  int deliveryAddressId;
  int deliveryManId;
  String orderType;
  int restaurantId;
  String createdAt;
  String updatedAt;
  double deliveryCharge;
  String scheduleAt;
  String restaurantName;
  String restaurantAddress;
  String restaurantLat;
  String restaurantLng;
  String restaurantLogo;
  String restaurantPhone;
  int itemCount;
  DeliveryAddress deliveryAddress;
  Customer customer;

  OrderModel(
      {this.id,
        this.userId,
        this.orderAmount,
        this.couponDiscountAmount,
        this.paymentStatus,
        this.orderStatus,
        this.totalTaxAmount,
        this.paymentMethod,
        this.transactionReference,
        this.deliveryAddressId,
        this.deliveryManId,
        this.orderType,
        this.restaurantId,
        this.createdAt,
        this.updatedAt,
        this.deliveryCharge,
        this.scheduleAt,
        this.restaurantName,
        this.restaurantAddress,
        this.restaurantLat,
        this.restaurantLng,
        this.restaurantLogo,
        this.restaurantPhone,
        this.itemCount,
        this.deliveryAddress,
        this.customer});

  OrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    orderAmount = json['order_amount'].toDouble();
    couponDiscountAmount = json['coupon_discount_amount'].toDouble();
    paymentStatus = json['payment_status'];
    orderStatus = json['order_status'];
    totalTaxAmount = json['total_tax_amount'].toDouble();
    paymentMethod = json['payment_method'];
    transactionReference = json['transaction_reference'];
    deliveryAddressId = json['delivery_address_id'];
    deliveryManId = json['delivery_man_id'];
    orderType = json['order_type'];
    restaurantId = json['restaurant_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deliveryCharge = json['delivery_charge'].toDouble();
    scheduleAt = json['schedule_at'];
    restaurantName = json['restaurant_name'];
    restaurantAddress = json['restaurant_address'];
    restaurantLat = json['restaurant_lat'];
    restaurantLng = json['restaurant_lng'];
    restaurantLogo = json['restaurant_logo'];
    restaurantPhone = json['restaurant_phone'];
    itemCount = json['item_count'];
    deliveryAddress = json['delivery_address'] != null
        ? new DeliveryAddress.fromJson(json['delivery_address'])
        : null;
    customer = json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['order_amount'] = this.orderAmount;
    data['coupon_discount_amount'] = this.couponDiscountAmount;
    data['payment_status'] = this.paymentStatus;
    data['order_status'] = this.orderStatus;
    data['total_tax_amount'] = this.totalTaxAmount;
    data['payment_method'] = this.paymentMethod;
    data['transaction_reference'] = this.transactionReference;
    data['delivery_address_id'] = this.deliveryAddressId;
    data['delivery_man_id'] = this.deliveryManId;
    data['order_type'] = this.orderType;
    data['restaurant_id'] = this.restaurantId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['delivery_charge'] = this.deliveryCharge;
    data['schedule_at'] = this.scheduleAt;
    data['restaurant_name'] = this.restaurantName;
    data['restaurant_address'] = this.restaurantAddress;
    data['restaurant_lat'] = this.restaurantLat;
    data['restaurant_lng'] = this.restaurantLng;
    data['restaurant_logo'] = this.restaurantLogo;
    data['restaurant_phone'] = this.restaurantPhone;
    data['item_count'] = this.itemCount;
    if (this.deliveryAddress != null) {
      data['delivery_address'] = this.deliveryAddress.toJson();
    }
    if (this.customer != null) {
      data['customer'] = this.customer.toJson();
    }
    return data;
  }
}

class DeliveryAddress {
  int id;
  String addressType;
  String contactPersonNumber;
  String address;
  String latitude;
  String longitude;
  int userId;
  String contactPersonName;
  String createdAt;
  String updatedAt;
  int zoneId;

  DeliveryAddress(
      {this.id,
        this.addressType,
        this.contactPersonNumber,
        this.address,
        this.latitude,
        this.longitude,
        this.userId,
        this.contactPersonName,
        this.createdAt,
        this.updatedAt,
        this.zoneId});

  DeliveryAddress.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    addressType = json['address_type'];
    contactPersonNumber = json['contact_person_number'];
    address = json['address'];
    latitude = json['latitude'].toString();
    longitude = json['longitude'].toString();
    userId = json['user_id'];
    contactPersonName = json['contact_person_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    zoneId = json['zone_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['address_type'] = this.addressType;
    data['contact_person_number'] = this.contactPersonNumber;
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['user_id'] = this.userId;
    data['contact_person_name'] = this.contactPersonName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['zone_id'] = this.zoneId;
    return data;
  }
}

class Customer {
  int id;
  String fName;
  String lName;
  String phone;
  String email;
  String image;
  String createdAt;
  String updatedAt;
  String cmFirebaseToken;

  Customer(
      {this.id,
        this.fName,
        this.lName,
        this.phone,
        this.email,
        this.image,
        this.createdAt,
        this.updatedAt,
        this.cmFirebaseToken});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
    email = json['email'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    cmFirebaseToken = json['cm_firebase_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['cm_firebase_token'] = this.cmFirebaseToken;
    return data;
  }
}

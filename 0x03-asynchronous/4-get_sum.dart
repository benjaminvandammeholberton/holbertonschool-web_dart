import '4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    String userId = json.decode(userData)['id'];
    String userOrders = await fetchUserOrders(userId);
    List userOrdersList = jsonDecode(userOrders);
    num totalPrice = 0;
    for (final item in userOrdersList) {
      String itemPrice = await fetchProductPrice(item);
      totalPrice += num.parse(itemPrice);
    }
    return totalPrice;

  } catch(error){
    return -1;
  }
}
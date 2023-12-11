import '4-util.dart';
import 'dart:convert';
calculateTotal() async{
    try{
        String data = await fetchUserData();
        Map<String, dynamic> dataMap = jsonDecode(data);
        String id = dataMap['id'];
        String newdata = await fetchUserOrders(id);
        var newdataMap = jsonDecode(newdata);
        num total = 0.0;
        for (var order in newdataMap){
            total += jsonDecode(await fetchProductPrice(order));
        }
        return total;
    }
    catch(e){
        return -1;
    }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:sslcommerz_flutter/model/SSLCAdditionalInitializer.dart';
import 'package:sslcommerz_flutter/model/SSLCCustomerInfoInitializer.dart';
import 'package:sslcommerz_flutter/model/SSLCEMITransactionInitializer.dart';
import 'package:sslcommerz_flutter/model/SSLCSdkType.dart';
import 'package:sslcommerz_flutter/model/SSLCShipmentInfoInitializer.dart';
import 'package:sslcommerz_flutter/model/SSLCTransactionInfoModel.dart';
import 'package:sslcommerz_flutter/model/SSLCommerzInitialization.dart';
import 'package:sslcommerz_flutter/model/SSLCurrencyType.dart';
import 'package:sslcommerz_flutter/model/sslproductinitilizer/General.dart';
import 'package:sslcommerz_flutter/model/sslproductinitilizer/SSLCProductInitializer.dart';
import 'package:sslcommerz_flutter/sslcommerz.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                Spacer(),
                Text("Add voucher code"),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kTextColor,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: "\$337.15",
                        style: TextStyle(fontSize: 24, color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 190,
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {
                      sslCommerzCustomizedCall();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> sslCommerzGeneralCall() async {
    Sslcommerz sslcommerz = Sslcommerz(
        initializer: SSLCommerzInitialization(
            ipn_url: "www.ipnurl.com",
            multi_card_name: 'multicard',
            currency: SSLCurrencyType.BDT,
            product_category: "Food",
            sdkType: SSLCSdkType.TESTBOX,
            store_id: 'centr5eb574ade72ea',
            store_passwd: 'centr5eb574ade72ea',
            total_amount: 100.0,
            tran_id: "1231321321321312"));
    sslcommerz.payNow();
  }

  Future<void> sslCommerzCustomizedCall() async {
    Sslcommerz sslcommerz = Sslcommerz(
        initializer: SSLCommerzInitialization(
            ipn_url: "www.ipnurl.com",
            multi_card_name: 'multicard',
            currency: SSLCurrencyType.BDT,
            product_category: "Food",
            sdkType: SSLCSdkType.TESTBOX,
            store_id: 'testbox',
            store_passwd: 'qwerty',
            total_amount: 100.0,
            tran_id: "1231321321321312"));
    sslcommerz
        .addEMITransactionInitializer(
        sslcemiTransactionInitializer: SSLCEMITransactionInitializer(
            emi_options: 1, emi_max_list_options: 3, emi_selected_inst: 2))
        .addShipmentInfoInitializer(
        sslcShipmentInfoInitializer: SSLCShipmentInfoInitializer(
            shipmentMethod: "yes",
            numOfItems: 5,
            shipmentDetails: ShipmentDetails(
                shipAddress1: "Ship address 1",
                shipCity: "Faridpur",
                shipCountry: "Bangladesh",
                shipName: "Ship name 1",
                shipPostCode: "7860")))
        .addCustomerInfoInitializer(
        customerInfoInitializer: SSLCCustomerInfoInitializer(
            customerName: null,
            customerEmail: null,
            customerAddress1: null,
            customerCity: null,
            customerPostCode: null,
            customerCountry: null,
            customerPhone: "01755467748"))
        .addProductInitializer(
        sslcProductInitializer:
        // ***** ssl product initializer for general product STARTS*****
        SSLCProductInitializer(
            productName: "Water Filter",
            productCategory: "Widgets",
            general: General(
                general: "General Purpose",
                productProfile: "Product Profile"))
      // ***** ssl product initializer for general product ENDS*****

      // ***** ssl product initializer for non physical goods STARTS *****
      // SSLCProductInitializer.WithNonPhysicalGoodsProfile(
      //     productName:
      //   "productName",
      //   productCategory:
      //   "productCategory",
      //   nonPhysicalGoods:
      //   NonPhysicalGoods(
      //      productProfile:
      //       "Product profile",
      //     nonPhysicalGoods:
      //     "non physical good"
      //       ))
      // ***** ssl product initializer for non physical goods ENDS *****

      // ***** ssl product initialization for travel vertices STARTS *****
      //       SSLCProductInitializer.WithTravelVerticalProfile(
      //          productName:
      //         "productName",
      //         productCategory:
      //         "productCategory",
      //         travelVertical:
      //         TravelVertical(
      //               productProfile: "productProfile",
      //               hotelName: "hotelName",
      //               lengthOfStay: "lengthOfStay",
      //               checkInTime: "checkInTime",
      //               hotelCity: "hotelCity"
      //             )
      //       )
      // ***** ssl product initialization for travel vertices ENDS *****

      // ***** ssl product initialization for physical goods STARTS *****

      // SSLCProductInitializer.WithPhysicalGoodsProfile(
      //     productName: "productName",
      //     productCategory: "productCategory",
      //     physicalGoods: PhysicalGoods(
      //         productProfile: "Product profile",
      //         physicalGoods: "non physical good"))

      // ***** ssl product initialization for physical goods ENDS *****

      // ***** ssl product initialization for telecom vertice STARTS *****
      // SSLCProductInitializer.WithTelecomVerticalProfile(
      //     productName: "productName",
      //     productCategory: "productCategory",
      //     telecomVertical: TelecomVertical(
      //         productProfile: "productProfile",
      //         productType: "productType",
      //         topUpNumber: "topUpNumber",
      //         countryTopUp: "countryTopUp"))
      // ***** ssl product initialization for telecom vertice ENDS *****
    )
        .addAdditionalInitializer(
        sslcAdditionalInitializer: SSLCAdditionalInitializer(
            valueA: "value a ",
            valueB: "value b",
            valueC: "value c",
            valueD: "value d"));
    var result = await sslcommerz.payNow();
    if (result is PlatformException) {
      print("the response is: " + result.message + " code: " + result.code);
    } else {
      SSLCTransactionInfoModel model = result;
    }
  }
}

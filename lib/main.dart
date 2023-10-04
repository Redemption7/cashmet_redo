import 'dart:io';

import 'package:cashmet_redo/constants/routes.dart';
import 'package:cashmet_redo/views/airtime/airtime_purchase_options_view.dart';
import 'package:cashmet_redo/views/airtime/airtime_topup_self.dart';
import 'package:cashmet_redo/views/banking_services/bank_to_wallet.dart';
import 'package:cashmet_redo/views/banking_services/banking_services_view.dart';
import 'package:cashmet_redo/views/banking_services/zipit.dart';
import 'package:cashmet_redo/views/bills/bill_payments_view.dart';
import 'package:cashmet_redo/views/bills/zol_payments_view.dart';
import 'package:cashmet_redo/views/card/card_view.dart';
import 'package:cashmet_redo/views/home/home_view.dart';
import 'package:cashmet_redo/views/pay_merchant/pay_merchant.dart';
import 'package:cashmet_redo/views/pay_merchant/scan_to_pay_view.dart';
import 'package:cashmet_redo/views/send_money/send_money_view.dart';
import 'package:cashmet_redo/views/services/service_view.dart';
import 'package:cashmet_redo/views/settings/settings_view.dart';
import 'package:cashmet_redo/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'views/airtime/airtime _topup_other.dart';
import 'views/banking_services/wallet_to_bank.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  PlatformApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CashMetRoutes.home,
      home: const HomeView(),
      routes: {
        CashMetRoutes.airtimePurchaseOptionsView:(context) => const AirtimePurchaseOptions(),
        CashMetRoutes.airtimeTopupSelf:(context) => const AirtimeSelfTopUp(),
        CashMetRoutes.airtimetopupOther:(context) => const AirtimeTopUpOther(),
        CashMetRoutes.bankToWallet:(context) => const BankToWallet(),
        CashMetRoutes.bankingServicesView:(context) => const BankingServiceView(),
        CashMetRoutes.home:(context) => const HomeView(),
        CashMetRoutes.servicesView:(context) => const ServiceView(),
        CashMetRoutes.settings:(context) => const SettingsView(),
        CashMetRoutes.walletToBank:(context) => const WalletToBank(),
        CashMetRoutes.zipit :(context) => const ZipitView(),
        CashMetRoutes.card :(context) => const CardView(),
        CashMetRoutes.billPayments :(context) => const BillPaymentsView(),
        CashMetRoutes.zolPayments :(context) => const ZolPaymentsView(),
        CashMetRoutes.sendMoney :(context) => const SendMoneyView(),
        CashMetRoutes.payMerchant :(context) => const PayMerchantsView(),
        CashMetRoutes.scanToPay :(context) => const ScanToPayView(),
      },
    );
  }
}

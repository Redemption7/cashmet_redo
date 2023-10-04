import 'package:momentum/momentum.dart';

class ApiUrls extends MomentumService {
  static final _transactionsPort = 'AKUPAY-TRANSACTION-SERVICE'.toLowerCase();

  static final _subscriberPort = 'AKUPAY-SUBSCRIBER-SERVICE'.toLowerCase();

  static final _productPort = 'AKUPAY-BILLER-SERVICE'.toLowerCase();

  static final _bankPort = 'AKUPAY-AGENT-SERVICE'.toLowerCase();

  static final _storagePort = 'AKUPAY-FILE-STORAGE-SERVICE'.toLowerCase();

  static final String _serverTransactionBaseUrl =
      '$_baseUrl$_transactionsPort/';

  static final String _serverSubscriberBaseUrl = '$_baseUrl$_subscriberPort/';

  static final String _serverProductBaseUrl = '$_baseUrl$_productPort/';

  static final String _serverBankBaseUrl = '$_baseUrl$_bankPort/';

  static final String _serverStorageBaseUrl = '$_baseUrl$_storagePort/';

  static final String _apiVersion = 'api/v1/';

// base for transactions
  static final String _baseTransactionsUrl =
      _serverTransactionBaseUrl + _apiVersion;

  static final String _baseSubscriberUrl =
      _serverSubscriberBaseUrl + _apiVersion;

  static final String _baseProductUrl = _serverProductBaseUrl + _apiVersion;

  static final String _baseBankUrl = _serverBankBaseUrl + _apiVersion;

  static final String _baseStorageUrl = _serverStorageBaseUrl + _apiVersion;

// storage url
  static final String uploadImage =
      _baseStorageUrl + 'files/upload'; // post formdata to image

// subscriber urls
  static final String subscriberBalance =
      _baseTransactionsUrl + 'transactions/subscriber-balance/'; // ../{mobile}

  static final String billCategories =
      _baseTransactionsUrl + 'transactions/product-categories';

  static final String selfRegister =
      _baseTransactionsUrl + 'transactions/self-registration';

  static final String merchantInfo =
      _baseTransactionsUrl + 'transactions/merchant-info/'; // ../{mobile}

  static final String merchantOperators = _baseTransactionsUrl +
      'transactions/merchant-info-withOperators/'; // ../{mobile}

  static final String recipientInfo =
      _baseTransactionsUrl + 'transactions/recipient-info/'; // ../{mobile}

  static final String transfer = _baseTransactionsUrl + 'transactions/transfer';

  static final String login =
      _baseTransactionsUrl + 'transactions/wallet-login';

  static final String loginWithOTP =
      _baseTransactionsUrl + 'transactions/wallet-login-with-otp';

  static final String resendOTP =
      _baseTransactionsUrl + 'transactions/resend-otp/';

  static final String verifyOTP_ =
      _baseTransactionsUrl + 'transactions/verify-otp';

  static final String walletTransfer =
      _baseTransactionsUrl + 'transactions/wallet-transfer';

  static final String linkCard = _baseTransactionsUrl + 'cards/self-link-card';
  //`${apiUrls.cashmetBaseUrl}/akupay-transaction-service/api/v1/cards/self-link-card`,

  static final String blockCard = _baseTransactionsUrl + 'cards/block';

  /// same as unblock card
  static final String activateCard = _baseTransactionsUrl + 'cards/activate';

  /// ../{mobile}
  static final String unlinkCard =
      _baseTransactionsUrl + 'cards/unlink-account/';

  /// /{mobile-number}
  static final String myCard = _baseTransactionsUrl + 'cards/my-card/';

  static final String walletToBank =
      _baseTransactionsUrl + 'transactions/wallet-to-bank';

  static final String bankToWallet =
      _baseTransactionsUrl + 'transactions/bank-to-wallet';

  static final String payment = _baseTransactionsUrl + 'transactions/payment';

  static final String billPayment =
      _baseTransactionsUrl + 'transactions/bill-payment';

  static final String zipitSend =
      _baseTransactionsUrl + 'transactions/zipit-send';

  /// fetch first page, 5 transactions only
  static final String transactions =
      _baseTransactionsUrl + 'transactions/subscribers/';

  /// fetch transaction by Id (for generating report)
  static final String transactionById =
      _baseTransactionsUrl + 'transactions/'; // ../{id}

// --------------- subscribers -------------------
  static final String mobileSubscriber =
      _baseSubscriberUrl + 'subscriber-mobile/';
  static final String pinReset = _baseSubscriberUrl + 'subscriber-reset/';

  /// ../{mobile}
  static final String deactivateSubscriber =
      _baseSubscriberUrl + 'subscriber-deactivate/';

  /// PUT request /number/old-pin/new-pin  {'message': ''}
  static final String changePin = _baseSubscriberUrl + 'subscriber-change-pin/';

// --------- products
  static final String productList = _baseProductUrl + 'products-list';

// ------ banks
  static final String bankList = _baseBankUrl + 'bank-list';

  // ---------- whatsapp banking
  /// post request
  static final String activateWhatsAppBanking = _whatsappBaseUrl + 'activate';

  /// put request, .../{mobile}
  static final String deactivateWhatsAppBanking =
      _whatsappBaseUrl + 'deactivate/';

  // ================== CASHMETT LIVE | TEST =========================
//http://192.167.1.153:8765
  final String _liveBaseUrl = 'https://api.cashmet.co.zw/';

  final String _testBaseUrl = 'http://192.167.1.109:8765/';

  static String _baseUrl = '';

// -------------------------------------
// change card pin url
  String setCardPin = '';

  final _testChangeCardPin = 'http://192.167.1.81:65000/api/card';

  final _liveChangeCardPin = 'http://154.120.255.101:65000/api/card';
// -------------------------------------

  // ================== APP BANKING LIVE | TEST =========================

  final String _whatsappLiveBaseUrl = 'https://whatsapp.cashmet.co.zw/api/v1/';

  final String _whatsappTestBaseUrl = 'https://whatsapp.cashmet.co.zw/api/v1/';

  static String _whatsappBaseUrl = '';
  // ========================================================

  final bool useTestUrl;

  ApiUrls({this.useTestUrl= false}) {
    ApiUrls._baseUrl = useTestUrl ? _testBaseUrl : _liveBaseUrl;
    ApiUrls._whatsappBaseUrl =
        useTestUrl ? _whatsappTestBaseUrl : _whatsappLiveBaseUrl;
    this.setCardPin = useTestUrl ? _testChangeCardPin : _liveChangeCardPin;
    //log('[APP-BASE-URL] $_baseUrl | $setCardPin');
  }
}

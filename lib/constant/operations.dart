class Operations{

 final String image ,type1,type2;
Operations({
  required this.image,
  required this.type1,
  required this.type2,
});
}

List<Operations> operation =[

  Operations(
    image: 'https://raw.githubusercontent.com/abdulazizahwan/flutter_money_management_app/90ddf8832293f954ac9c0efd3f005bf97309fd78/assets/svg/money_transfer_blue.svg',
    type1: 'Money',
    type2:'Transfer',
),
  Operations(
    image: 'https://raw.githubusercontent.com/abdulazizahwan/flutter_money_management_app/90ddf8832293f954ac9c0efd3f005bf97309fd78/assets/svg/bank_withdraw_blue.svg',
    type1: 'Bank',
    type2: 'Withdraw',
  ),
  Operations(
    image: 'https://raw.githubusercontent.com/abdulazizahwan/flutter_money_management_app/90ddf8832293f954ac9c0efd3f005bf97309fd78/assets/svg/insight_tracking_blue.svg',
    type1: 'Insight',
    type2: 'Tracking',
  ),
];


class Histories{

  final String image ,type,date,payments;
  Histories({
    required this.image,
    required this.type,
    required this.date,
    required this.payments,
  });
}

List<Histories> histories =[

  Histories(
    image: 'lib/images/uberlogo.png',
    type: 'Uber',
    date:'10 April 2022',
    payments: '-50.17\$',
  ),
  Histories(
    image: 'lib/images/extralogo.png',
    type: 'Extra',
    date:'5 April 2022',
    payments: '-800.215\$',
  ),
  Histories(
    image: 'lib/images/JahezLogo.png',
    type: 'Jahez',
    date:'29 March 2022',
    payments :'-70.44\$',
  ),
  Histories(
    image: 'lib/images/nikeLogo.webp',
    type: 'Nike',
    date:'15 Febraury 2022',
    payments: '-300.25\$',
  ),
];
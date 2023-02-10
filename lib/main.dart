

import 'package:flutter/material.dart';
import 'package:pr_5_maps/page/map_page.dart';
import 'package:pr_5_maps/page/secondPage.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'second': (context) => const detailpage(),
        'location': (context) => const Location(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> myList = [
    {
      'link': "https://tse2.mm.bing.net/th?id=OIP.q__jb5o7z07STPJVnwdkNQHaHa&pid=Api&P=0",
      'name': "Tesla",
      'text': "Elon Musk",
      'lat': 30.222296,
      'long': -97.617134,
      'image': "https://tse2.mm.bing.net/th?id=OIP.xzthzbwaJE8O13zjn78sAQHaFj&pid=Api&P=0",
      'detail' : '''Tesla Inc (Tesla) is an automotive and energy company.It designs,
develops, manufactures, sells and leases electric vehicles and
energy generation and storage systems.The company produces 
and sells the Model Y, Model 3, Model X, Model S, Cybertruck,
Tesla Semi and Tesla Roadster vehicles.''',
    },
    {
      'link': "https://www.emerce.nl/content/uploads/2017/09/tata-partner-portal-logo.png",
      'name': "Tata Motors",
      'text': "Guenter Butschek",
      'lat': 18.6435,
      'long': 73.8202,
      'image': "https://media.zigcdn.com/media/content/2016/Jan/guenter-butschek-tata-motors-zigwheels-19012016-m_720x540.jpg",
      'detail' : '''Tata Motors Limited, also popularly known as Tata Motors, is a
listed public company incorporated on 01 September, 1945.
It is classified as a public limited company and is located in
Mumbai, Maharashtra. It's authorized share capital is INR 4,000
cr and the total paid-up capital is INR 765.95 cr.''',
    },
    {
      'link': "https://tse2.mm.bing.net/th?id=OIP.CsSRV05923HcLKtlqLtQHwHaIf&pid=Api&P=0",
      'name': "Apple",
      'text': "Tim Cook",
      'lat': 37.33493621091769,
      'long': -122.00892843030311,
      'image': "https://tse1.mm.bing.net/th?id=OIP.Mppyyk2ZUAsbPJHPLfSdCAHaId&pid=Api&P=0",
      'detail' : '''Apple is a company that designs, manufactures, and markets mobile
communication and media devices. It offers personal computers, 
portable digital music players, and a variety of related software,
services, peripherals, networking solutions, and third-party digital
 content and applications.''',
    },
    {
      'link': "https://tse3.mm.bing.net/th?id=OIP.SqbBjKe5e8KkrIWY7d6obQHaHa&pid=Api&P=0",
      'name': "Google",
      'text': "Sundar Pichai",
      'lat': 37.42219333416145,
      'long': -122.08411117708948,
      'image': "https://tse1.mm.bing.net/th?id=OIP.XAHuBrTYfRrykmfF00t78QHaGL&pid=Api&P=0",
      'detail': '''Google is an American multinational technology company focusing
on search engine technology, online advertising, cloud computing,
computer software, quantum computing, e-commerce, artificial 
intelligence, and consumer electronics. It has been referred to
as the "most powerful company in the world.''',
    },
    {
      'link': "https://tse3.mm.bing.net/th?id=OIP.EDxym19SGPWpBwLhlWr05AAAAA&pid=Api&P=0",
      'name': "Wipro",
      'text': "Thierry Delaporte",
      'lat':12.914249601630003,
      'long': -77.68620167247094,
      'image': "https://tse1.mm.bing.net/th?id=OIP.8zX1WhawYJc2DQiLpvYtuAHaEK&pid=Api&P=0",
      'detail': '''Wipro is an integrated corporation that offers a diverse range of
products, solutions and services in systems, software, 
consumer care, healthcare, lighting and infrastructure 
technology. We are driven by our passion for quality and
our commitment to customers.''',
    },
    {
      'link': "https://tse4.mm.bing.net/th?id=OIP.sD5x6U8hIAj80ihQ2r3cPQHaGA&pid=Api&P=0",
      'name': "Infosys",
      'text': "Salil Parekh",
      'lat':  30.7274,
      'long': 76.8436,
      'image': "https://images.newindianexpress.com/uploads/user/imagelibrary/2020/2/14/w900X450/PTI2_12_2020_000125A.jpg",
      'detail': '''Infosys Limited, also popularly known as Infosys, is a listed public
company incorporated on 02 July, 1981. It is classified as
a public limited company and is located in Karnataka,
Karnataka. It's authorized share capital is INR 2,400.00 cr
and the total paid-up capital is INR 2,103.91 cr.''',
    },
    {
      'link': "https://tse4.mm.bing.net/th?id=OIP.fr8qhe6UzecWHCcN6rCGjgHaHa&pid=Api&P=0",
      'name': "LG",
      'text': "William Cho",
      'lat':  12.939506530461626,
      'long':  77.60421954133146,
      'image': "https://tse1.mm.bing.net/th?id=OIP.MT853Oe5N07BeKrwvcTzTAHaHa&pid=Api&P=0",
      'detail': '''LG Company LG stands for Lucky Goldstar. It refers to a company 
that produces, sells, and markets electronic products to its 
end-users. It is a South Korean multinational company with 
headquarters in Yeouido dong.''',
    },
        {
      'link': "https://tse4.mm.bing.net/th?id=OIP.kIMyGsCSJD9ZRExrLCIMwgHaEZ&pid=Api&P=0",
      'name': "Nike",
      'text': "John Donahoe",
          'lat': 45.5101984,
          'long':  -122.831337700243,
      'image': "https://tse2.mm.bing.net/th?id=OIP.4e-O4pbBgNlIoL7_z8bbYwHaEK&pid=Api&P=0",
      'detail': '''Nike, Inc., formerly (1964–78) Blue Ribbon Sports, American 
sportswear company headquartered in Beaverton, Oregon.
It was founded in 1964 as Blue Ribbon Sports by Bill 
Bowerman,a track-and-field coach at the University of
Oregon, and his former student Phil Knight.''',
    },
    {
      'link': "https://tse2.mm.bing.net/th?id=OIP.tcL1p2X6R3_hCRwdtgPmdAAAAA&pid=Api&P=0",
      'name': "Intel",
      'text': "Patrick Gelsinger",
      'lat': 37.3861,
      'long':  -121.9581,
      'image': "https://tse1.mm.bing.net/th?id=OIP.LC-3pQlAx7Mvj-dP16Zp8QHaHu&pid=Api&P=0",
      'detail': '''Intel Corporation is an American multinational corporation and 
technology company headquartered in Santa Clara, California.It 
is the world's largest semiconductor chip manufacturer by revenue,
and is one of the developers of the x86 series of instruction 
sets, the instruction sets found in most personal computers.''',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MNC CEOs",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w200,
            color: Colors.white,
            letterSpacing: 5,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: myList
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: (){
                          setState((){
                            Navigator.pushNamed(context, 'second',arguments: e);
                          });
                        },
                        child: Container(
                          height: 78,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0.5, 0.5),
                              ),
                            ],
                          ),
                          child: Row(
                            children:[
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: Image.network(e['link'],height: 65),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['name'],
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          e['text'],
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey.shade500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: CircleAvatar(
                                      maxRadius: 32,
                                      backgroundImage: NetworkImage(e['image'],),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
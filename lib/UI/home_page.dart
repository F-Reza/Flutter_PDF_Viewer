import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Reader'),
        centerTitle: true,
        leading: const Icon(Icons.sort_rounded),
        actions: [
          IconButton(
            icon: const Icon(Icons.help),
            onPressed: () {
              //
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              child: Image.asset('images/bg.png',fit: BoxFit.cover,),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      alignment: Alignment.center,
                      color: Colors.indigo,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Recent files',style: TextStyle(fontSize: 18),),
                          const SizedBox(height: 12,),
                          Container(
                            height: size.height * 0.3,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: ListView.separated(
                              shrinkWrap: true,
                                itemBuilder: ((context,index) {
                                  return ListTile(
                                    leading: Image.asset('images/pdf.png', width: 40, height: 50,),
                                    title: const Text('File Name',style: TextStyle(color: Colors.black87),),
                                  );
                                }),
                                separatorBuilder: (context, index) => const Divider(color: Colors.white,),
                                itemCount: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.amber,
                      child: const Text('Window-2'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
                            height: size.height * 0.32,
                            padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                                itemBuilder: ((context,index) {
                                  return ListTile(
                                    leading: Image.asset('images/pdf.png', width: 40, height: 50,),
                                    title: const Text('File Name',style: TextStyle(color: Colors.black87),),
                                    subtitle: const Text('Path to file'),
                                    trailing: IconButton(
                                      onPressed: () {
                                        //
                                      },
                                      icon: const Icon(Icons.cancel),
                                    ),
                                  );
                                }),
                                separatorBuilder: (context, index) => const Divider(color: Colors.white,),
                                itemCount: 5,
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
                      padding: const EdgeInsets.all(12),
                      color: Colors.indigoAccent,
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.11,
                            child: Row(
                              children: [
                                buttonWidget(
                                  color: Colors.white24,
                                  onTap : () {},
                                  path: 'images/open.png',
                                  title: 'Open URL',
                                ),
                                const SizedBox(width: 12,),
                                buttonWidget(
                                  color: Colors.white54,
                                  onTap : () {},
                                  path: 'images/folder.png',
                                  title: 'Select File',
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12,),
                          buttonWidget(
                            color: Colors.white54,
                            onTap : () {},
                            path: 'images/create.png',
                            title: 'Create PDF',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(2),
            color: Colors.indigo,
            alignment: Alignment.center,
            child: const Text('Developed by NextDigit',
              style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
          ),
        ],
      ),
    );
  }

  Widget buttonWidget({color, path, title, onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('$path',height: 45,),
              Text('$title',style: const TextStyle(color: Colors.black87),),
            ],
          ),
        ),
      ),
    );
  }


}


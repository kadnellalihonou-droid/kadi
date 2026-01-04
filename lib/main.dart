import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:'Magazine',
      debugShowCheckedModeBanner: false,
      home: PageAccueil(),
    );
  }
}
class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazine Infos', 
        style: TextStyle(color: Colors.white,)),
        centerTitle: true,
        
        backgroundColor: Colors.red,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu), color: Colors.white,),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search),color: Colors.white,),
        ],


      ),
      body: Center(
        child: Image(image: AssetImage('assets/images/magazineinfo2.png'))
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Tu as cliqué'),
            ),

          );
          },
          child: const Text('Click'),
          ),
    );
  }
}

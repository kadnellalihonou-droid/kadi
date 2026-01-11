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
      body: Column(
        children: const[
          Image(image: AssetImage('assets/images/magazineinfo2.png')),
          PartieTitre(),
          PartieTexte(),
          PartieIcone(),
          PartieRubrique(),

      ],

      ),
    );
  }
  }
  class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text("Bienvenue au Magazine Info", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          SizedBox(height: 5),
          Text("Votre source d'actualité numérique", style: TextStyle(fontSize: 16, color: Colors.grey)),

        ],
      )
    

    );
  }
}

class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        "Magazine Infos est un magazine numérique moderne qui offre à"" ses lecteurs des informations fiables, des articles variés et ""des analyses approfondies.", style: TextStyle(fontSize: 14), textAlign: TextAlign.justify,
      ),
    );
  }
}

class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              children: const [
                Icon(Icons.phone, color: Colors.pink),
                SizedBox(height: 5),
                Text("TEL", style: TextStyle(color: Colors.pink),)
          
              ],
            ),
          ),
          Container(
            child: Column(
              children: const [
                Icon(Icons.email, color: Colors.pink),
                SizedBox(height: 5),
                Text("MAIL", style: TextStyle(color: Colors.pink),)
                 ],
            ),
          ),
    Container(
            child: Column(
              children: const [
                Icon(Icons.share, color: Colors.pink),
                SizedBox(height: 5),
                Text("PARTAGE", style: TextStyle(color: Colors.pink),)
                 ],
            )
          )
        ]
      ),
    );
  }
}

class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(12),
          child: Image.asset('assets/images/magazineinfo.jpg', width:150, height:100, fit: BoxFit.cover),
          ),
           ClipRRect(borderRadius: BorderRadius.circular(12),
          child: Image.asset('assets/images/magazineinfo2.png', width:150, height:100, fit: BoxFit.cover),
          ),

        ],
      ),
    );
  }
}
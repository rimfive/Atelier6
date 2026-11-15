import 'package:flutter/material.dart';

import 'models/produit.dart';
import 'page_details_produit.dart';

class listProduits extends StatelessWidget {
  listProduits({super.key});

  final List<produits> produitsList = [
    Produit(
      nom: "Ordinateur portable",
      description: "Laptop puissant pour travail et gaming.",
      prix: 1200.0,
    ),
    Produit(
      nom: "Smartphone",
      description: "Téléphone nouelle generation avec trible camera.",
      prix: 1200.0,
    ),
    Produit(
      nom: "Smartphone",
      description: "Téléphone nouelle generation avec trible camera.",
      prix: 900.0,
    ),
    Produit(
      nom: "Casque Bluetooth",
      description: "Casque sans fil avec reduction de bruit.",
      prix: 150.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liste des produits")),
      body: ListView.builder(
        itemCount: produitsList.length,
        itemBuilder: (context, index) {
          final produit = produits[index];
          return Card(
            elevation: 3,
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                produit.nom,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("$produit.prix \$"),
              trailing: ElevatedButton(
                child: Text("Voir"),
                onPressed: () {
                  // Naviguer vers la page de details
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsProduit(produit: produit),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

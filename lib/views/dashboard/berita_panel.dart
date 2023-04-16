import 'package:flutter/material.dart';
import 'package:projekaulia/models/berita_model.dart';
import 'package:projekaulia/providers/dashboard_provider.dart';
import 'package:provider/provider.dart';

class BeritaPanel extends StatelessWidget {
  const BeritaPanel({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BeritaLoadDataProvider>().refresh();

    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Terkini'),
        elevation: 0,
      ),
      body: Consumer<BeritaLoadDataProvider>(
        builder: (context, prov, w) {
          return ListView(
            children: [
              for(BeritaModel bm in prov.data)
               itemBerita(bm)
            ],
          );
        }
      )
    );
  }

  Container itemBerita(BeritaModel bm) {
    return Container(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      child: Image.network(bm.image ?? '',
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                            return Image.asset('assets/noimage.jpg');
                        },
                      ),
                      decoration: BoxDecoration(
                        border: Border.all()
                      ),
                    ),
                    Text('${bm.title}')
                  ],
                ),
              ),
            );
  }
}

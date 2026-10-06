import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static List<Map<String, String>> noticias = [
    {
      'título': 'Novo aplicativo facilita a rotina dos estudantes',
      'resumo':
          'Ferramenta reúne recursos para organização e acompanhamento dos estudos.',
      'categoria': 'Tecnologia',
      'data': '06/10/2026',
    },
    {
      'título': 'Brasil anuncia novas medidas para educação',
      'resumo':
          'Novas iniciativas buscam melhorar o acesso e a qualidade do ensino.',
      'categoria': 'Educação',
      'data': '05/10/2026',
    },
    {
      'título': 'Mercado de tecnologia cresce no país',
      'resumo':
          'Setor registra aumento na procura por profissionais e novos serviços digitais.',
      'categoria': 'Economia',
      'data': '04/10/2026',
    },
    {
      'título': 'Festival cultural reúne artistas brasileiros',
      'resumo':
          'Evento contará com música, exposições e apresentações durante o fim de semana.',
      'categoria': 'Cultura',
      'data': '03/10/2026',
    },
    {
      'título': 'Pesquisa revela hábitos de leitura dos brasileiros',
      'resumo':
          'Estudo aponta mudanças nos hábitos de consumo de livros nos últimos anos.',
      'categoria': 'Literatura',
      'data': '02/10/2026',
    },
  ];

  static final List<String> categorias = [
    'Todos',
    'Tecnologia',
    'Educação',
    'Economia',
    'Esporte',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/logotipo.png',
          height: 20,
        ),
        centerTitle: true,
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          SizedBox(
            height: 45,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              children: categorias.map((categoria) {
                final selecionada = categoria == 'Todas';
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: selecionada
                          ? Colors.black
                          : const Color(0xFFEDEDED),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    categoria,
                    style: const TextStyle(fontSize: 12),
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: noticias.length,
              itemBuilder: (context, index) {
                final noticia = noticias[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color(0xFFCDB2D9),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 120,
                        color: const Color(0xFFE4e9EF),
                        child: const Icon(Icons.image_outlined),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Tecnologia'),
                                SizedBox(
                                  width: 15,
                                ),
                                Text('06/10/2026'),
                              ],
                            ),
                            Text(
                              'Estudo aponta mudanças nos hábitos de consumo de livros nos últimos anos',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

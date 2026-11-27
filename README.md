Além do Óbvio — O que a Ciência Explica?

Trilha: Desenvolvimento Mobile
Integrante: Thaylanny Oliveira Santos

Sobre o projeto

Além do Óbvio é um quiz de terminal desenvolvido em Dart, com o tema fenômenos científicos do cotidiano e curiosidades que despertam a vontade de aprender.

O jogador responde perguntas de múltipla escolha e recebe explicações curtas após cada resposta.

O quiz possui 10 perguntas, quatro alternativas (A, B, C e D) por pergunta, identificação do jogador, validação de entrada, contagem de pontos, resultado com percentual, mensagens finais de acordo com o desempenho e opção de jogar novamente. A ordem das perguntas é embaralhada a cada partida.

Exemplo de pergunta

Por que o céu costuma parecer azul durante o dia?

A) Porque os oceanos refletem sua cor para o céu
B) Porque a atmosfera espalha mais a luz azul do Sol
C) Porque o Sol emite somente luz azul
D) Porque as nuvens filtram todas as outras cores

Resposta correta: B.

Como criar e executar

Para executar o projeto, é necessário ter o Dart SDK instalado.

Conforme a orientação da atividade, o projeto pode ser criado utilizando o comando:

dart create -t console alem_do_obvio

Depois, os arquivos do projeto devem ser organizados na estrutura correspondente, mantendo as pastas "bin", "lib" e "tool".

Dentro da pasta do projeto, execute:

dart pub get
dart run

O comando "dart run" inicia o programa principal localizado em "bin/alem_do_obvio.dart".

Como verificar o projeto

Para executar a verificação automática, utilize:

dart run tool/verify_quiz.dart

A verificação confere se há pelo menos cinco perguntas, se cada pergunta possui quatro alternativas, se o índice da resposta correta é válido, se a normalização e a validação funcionam e se as mensagens de desempenho são selecionadas corretamente.

Também realizei testes manuais para verificar respostas corretas e incorretas, letras minúsculas, respostas vazias, alternativas inválidas e a opção de jogar novamente.

Organização dos arquivos

alem_do_obvio/
├── bin/
│   └── alem_do_obvio.dart
├── lib/
│   ├── question.dart
│   ├── questions.dart
│   └── quiz.dart
├── tool/
│   └── verify_quiz.dart
├── pubspec.yaml
└── README.md

Conceitos de Dart utilizados

- "List": para armazenar as perguntas e alternativas.
- "for": para percorrer e apresentar as perguntas.
- "while": para repetir a leitura até receber uma resposta válida.
- "if/else": para verificar as respostas e classificar o desempenho.
- Funções: para separar responsabilidades e facilitar a manutenção.
- "stdin.readLineSync()": para receber dados digitados no terminal.
- "Random" e "shuffle()": para embaralhar a ordem das perguntas.

Uso de inteligência artificial

Utilizei inteligência artificial como apoio no desenvolvimento do projeto, principalmente para planejar a estrutura inicial, organizar os arquivos, revisar a lógica de validação e elaborar perguntas e explicações científicas.

Revisei e adaptei o conteúdo do projeto de acordo com os requisitos da atividade. Também busquei compreender o funcionamento das estruturas utilizadas e verificar se o quiz atendia às funcionalidades solicitadas.

Fontes consultadas

- Dart — criação de projetos: https://dart.dev/tools/dart-create
- Dart — leitura de entrada e interatividade: https://dart.dev/learn/tutorial/interactivity
- NASA — por que o céu é azul: https://spaceplace.nasa.gov/blue-sky/en/
- NASA — auroras: https://science.nasa.gov/sun/auroras/
- Met Office — chuva e petricor: https://weather.metoffice.gov.uk/learn-about/weather/types-of-weather/rain

Histórico de desenvolvimento

Durante o desenvolvimento, organizei o projeto em etapas, registrando as alterações por meio de commits no GitHub.

Exemplos de commits:

chore: criar estrutura inicial do projeto
feat: adicionar modelo e banco de perguntas
feat: implementar fluxo do quiz e pontuação
feat: validar respostas e adicionar replay
docs: atualizar README e instruções de teste

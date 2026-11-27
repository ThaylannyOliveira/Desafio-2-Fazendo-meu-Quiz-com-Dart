import 'question.dart';

/// Banco de perguntas: cada questão possui quatro alternativas e uma resposta.
const List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    statement: 'Por que o céu costuma parecer azul durante o dia?',
    options: [
      'Porque os oceanos refletem sua cor para o céu',
      'Porque a atmosfera espalha mais a luz azul do Sol',
      'Porque o Sol emite somente luz azul',
      'Porque as nuvens filtram todas as outras cores',
    ],
    correctIndex: 1,
    explanation: 'As moléculas do ar espalham mais os comprimentos de onda azuis da luz solar do que os vermelhos.',
  ),
  QuizQuestion(
    statement: 'O que contribui para aquele cheiro característico quando começa a chover após um período seco?',
    options: [
      'A água da chuva tem perfume natural de flores',
      'O cheiro é produzido pelo relâmpago',
      'Compostos do solo e de microrganismos são lançados no ar',
      'O oxigênio se transforma em vapor perfumado',
    ],
    correctIndex: 2,
    explanation: 'Esse cheiro é conhecido como petricor. Compostos como a geosmina, produzida por microrganismos do solo, podem ser dispersos em pequenas gotículas quando a chuva atinge o chão.',
  ),
  QuizQuestion(
    statement: 'Como se forma um arco-íris?',
    options: [
      'A luz solar interage com gotículas de água, sendo refratada, refletida e separada em cores',
      'As nuvens pintam uma faixa colorida no céu',
      'A luz da Lua se mistura com a luz das estrelas',
      'O vapor de água absorve todas as cores menos sete',
    ],
    correctIndex: 0,
    explanation: 'Dentro das gotículas, a luz muda de direção, sofre reflexão e se dispersa em diferentes cores.',
  ),
  QuizQuestion(
    statement: 'O trovão acontece principalmente porque...',
    options: [
      'as nuvens batem umas nas outras',
      'a chuva cai muito rápido',
      'o vento atravessa os fios elétricos',
      'o ar ao redor do raio aquece rapidamente e se expande',
    ],
    correctIndex: 3,
    explanation: 'O raio aquece o ar de forma muito rápida. A expansão brusca gera uma onda sonora: o trovão.',
  ),
  QuizQuestion(
    statement: 'Por que uma colher de metal parece mais fria que uma colher de madeira, mesmo estando no mesmo ambiente?',
    options: [
      'O metal sempre está em temperatura abaixo de zero',
      'O metal conduz o calor da mão mais rapidamente',
      'A madeira produz calor quando tocada',
      'A pele não consegue sentir a temperatura do metal',
    ],
    correctIndex: 1,
    explanation: 'O metal tem maior condutividade térmica: ele retira calor da mão mais rapidamente, dando sensação de frio.',
  ),
  QuizQuestion(
    statement: 'Qual é a principal explicação para o brilho dos vaga-lumes?',
    options: [
      'Eles refletem a luz da Lua em suas asas',
      'Possuem pequenas lâmpadas naturais',
      'Uma reação química em seu corpo produz luz',
      'O atrito das asas gera faíscas',
    ],
    correctIndex: 2,
    explanation: 'A bioluminescência ocorre por uma reação química que transforma energia em luz, com participação de substâncias como luciferina e da enzima luciferase.',
  ),
  QuizQuestion(
    statement: 'Por que ouvimos o trovão depois de vermos o relâmpago?',
    options: [
      'Porque a luz chega aos nossos olhos muito mais rápido que o som chega aos ouvidos',
      'Porque o trovão só começa quando a chuva termina',
      'Porque o relâmpago acontece antes da nuvem existir',
      'Porque o som não se propaga ao ar livre',
    ],
    correctIndex: 0,
    explanation: 'A luz viaja muito mais rápido que o som no ar, então vemos o clarão antes de ouvir o trovão.',
  ),
  QuizQuestion(
    statement: 'O que provoca as auroras, como a aurora boreal?',
    options: [
      'A luz das cidades refletida nas nuvens',
      'A combustão de gases na superfície da Terra',
      'A luz do Sol refletida por icebergs',
      'Partículas energéticas interagindo com gases da atmosfera',
    ],
    correctIndex: 3,
    explanation: 'Partículas energéticas interagem com átomos e moléculas da atmosfera, que liberam energia em forma de luz.',
  ),
  QuizQuestion(
    statement: 'Por que uma bebida gaseificada faz mais bolhas quando abrimos a garrafa?',
    options: [
      'O líquido começa a ferver em temperatura ambiente',
      'A pressão diminui e o gás carbônico dissolvido pode escapar',
      'O açúcar se transforma imediatamente em gás',
      'O ar entra e cria todas as bolhas do líquido',
    ],
    correctIndex: 1,
    explanation: 'Ao abrir a garrafa, a pressão sobre o líquido cai. Isso facilita a saída do dióxido de carbono dissolvido, formando bolhas.',
  ),
  QuizQuestion(
    statement: 'Por que a água líquida tem sua maior densidade perto de 4 °C?',
    options: [
      'Porque nessa temperatura toda a água vira gelo',
      'Porque a água perde toda a massa',
      'Por causa da organização particular das moléculas de água ao esfriar',
      'Porque o oxigênio desaparece da água',
    ],
    correctIndex: 2,
    explanation: 'A água apresenta uma anomalia: sua densidade é máxima por volta de 4 °C. Ao congelar, sua estrutura cristalina ocupa mais volume, por isso o gelo flutua.',
  ),
];

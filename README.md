# Além do Óbvio — O que a Ciência Explica?

**Trilha:** desenvolvimento mobile

**Integrantes:** Thaylanny Oliveira Santos 

## Sobre o projeto

Além do Óbvio é um quiz de terminal desenvolvido em Dart sobre fenômenos científicos que aparecem no cotidiano e curiosidades que despertam a vontade de aprender. O jogador responde perguntas de múltipla escolha e recebe explicações curtas após cada resposta.

O quiz possui 10 perguntas, quatro alternativas (A, B, C e D) por pergunta, identificação do jogador, validação de entrada, contagem de pontos, resultado com percentual, mensagens finais por desempenho e opção de jogar novamente. A ordem das perguntas é embaralhada a cada partida.

## Exemplo de pergunta

**Por que o céu costuma parecer azul durante o dia?**

- A) Porque os oceanos refletem sua cor para o céu
- B) Porque a atmosfera espalha mais a luz azul do Sol
- C) Porque o Sol emite somente luz azul
- D) Porque as nuvens filtram todas as outras cores

Resposta correta: B.

## Como criar e executar (conforme a atividade)

É necessário ter o Dart SDK instalado. Para cumprir a orientação de iniciar com `dart create`, abra o terminal na pasta onde deseja guardar o projeto e execute:

```bash
dart create -t console alem_do_obvio
```

Depois, copie para a pasta criada os arquivos deste projeto, mantendo a estrutura `bin`, `lib` e `tool` (e substituindo o `pubspec.yaml` pelo deste projeto). Em seguida, dentro da pasta `alem_do_obvio`, execute:

```bash
dart pub get
dart run
```

O comando `dart run` inicia o programa principal localizado em `bin/alem_do_obvio.dart`.

O comando `dart run` inicia o programa principal localizado em `bin/alem_do_obvio.dart`.

## Como verificar o projeto

Execute a verificação automática simples:

```bash
dart run tool/verify_quiz.dart
```

Ela confere se há pelo menos cinco perguntas, se cada pergunta possui quatro alternativas, se o índice da resposta correta é válido, se a normalização e a validação funcionam e se as mensagens de desempenho são selecionadas corretamente.

Também recomendamos testar manualmente: respostas certas e erradas, letras minúsculas, Enter sem resposta, letras inválidas e a opção de jogar novamente.

## Organização dos arquivos

```text
alem_do_obvio/
├── bin/
│   └── alem_do_obvio.dart # Entrada e interação com o jogador
├── lib/
│   ├── question.dart     # Modelo de uma pergunta
│   ├── questions.dart    # Lista de perguntas
│   └── quiz.dart         # Funções de validação e mensagens
├── tool/
│   └── verify_quiz.dart  # Verificações automatizadas
├── pubspec.yaml
└── README.md
```

## Conceitos de Dart utilizados

- `List` para armazenar as perguntas e alternativas.
- `for` para percorrer e apresentar as perguntas.
- `while` para repetir a leitura até receber uma resposta válida.
- `if/else` para verificar respostas e classificar o desempenho.
- Funções para separar responsabilidades e facilitar a manutenção.
- `stdin.readLineSync()` para receber dados digitados no terminal.
- `Random` e `shuffle()` para embaralhar a ordem das perguntas.

## Uso de inteligência artificial

A inteligência artificial foi utilizada como apoio para planejar a estrutura inicial do projeto, sugerir a organização dos arquivos, revisar a lógica de validação e ajudar a elaborar perguntas e explicações científicas. Os integrantes devem revisar o código, adaptar mensagens e perguntas, preencher seus nomes e testar cada funcionalidade antes da entrega. As informações científicas foram conferidas em fontes de divulgação científica e documentação oficial listadas abaixo.

## Fontes consultadas

- Dart — criação de projetos: https://dart.dev/tools/dart-create
- Dart — leitura de entrada e interatividade: https://dart.dev/learn/tutorial/interactivity
- NASA — por que o céu é azul: https://spaceplace.nasa.gov/blue-sky/en/
- NASA — auroras: https://science.nasa.gov/sun/auroras/
- Met Office — chuva e petricor: https://weather.metoffice.gov.uk/learn-about/weather/types-of-weather/rain

## Histórico de desenvolvimento

Registrem commits durante o desenvolvimento, por exemplo:

1. `chore: criar estrutura inicial do projeto`
2. `feat: adicionar modelo e banco de perguntas`
3. `feat: implementar fluxo do quiz e pontuação`
4. `feat: validar respostas e adicionar replay`
5. `docs: atualizar README e instruções de teste`

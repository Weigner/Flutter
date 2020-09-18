import 'package:com/model/racas_model.dart';

import 'database.dart';

class RacasRepository {


  Future<List<RacasModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<RacasModel> racas = new List<RacasModel>();

    if (db.created) {
      racas = new List<RacasModel>();
      racas.add(
        new RacasModel(
          raca: 'Akita',
          porte: 'Grande',
          conteudo:
            "O porte de cachorro poderoso e a carinha fofa vão te conquistar à primeira vista, mas será no dia a dia que o akita ou akita inu vai ganhar de vez o seu coração. \nPor mais que esse cachorro precise de uma dose extra de paciência para o adestramento, é um ótimo companheiro – protetor, leal e muito brincalhão. \nCertamente será um grande amigo para o seu tutor e sua família! \n Lembra do filme “Sempre ao Seu Lado”? Sim, o cachorro Hachiko, que continuou à espera de seu tutor mesmo depois que ele morreu, era um akita. Não é à toa que a história real de um akita ganhou os holofotes, monumentos e filmes graças à devoção ao tutor. Essa raça desenvolve um grande amor por seus humanos e pede em troca apenas carinho, atividades físicas e muita brincadeira, ou seja, a sua companhia! \n \n Origem: Japão \n Peso: 32-59 kg \n Altura: 61-71 cm \n Expectativa de vida: 10-13 anos",
        ),
      );
      racas.add(
        RacasModel(
          raca: 'Basset hound',
          porte: 'Medio',
          conteudo: """"Esse amigo de olhos caídos e orelhas compridas vai fazer você se apaixonar! Uma das raças mais famosas e populares do mundo, o basset hound é um cachorro companheiro e amoroso. E a raça também é muito paciente e gentil, o que faz dela uma das favoritas dos amantes de cachorros.

Atualmente, o basset hound é uma das raças mais famosas do mundo, com várias aparições em filmes e no mundo pop, como cachorro de estimação de Sherlock Holmes ou como o Droppy, que sempre infernizava a vida do lobo.

Origem: França
Peso: 18-30 kg
Porte: médio
Altura: 58-68 kg
Expectativa de vida: 12-13 anos""",
        ),
      );

      racas.add(
        RacasModel(
          raca: 'Beagle',
          porte: 'Medio',
          conteudo: """A alegria do beagle, ou bigou (como se fala), vai contagiar e divertir diariamente toda a família! Companheiros e aventureiros, adoram descobrir o mundo o tempo todo através do seu faro. Nenhum odor passa batido por esses cachorros, especialmente comida. O beagle encontra facilmente alimentos e adora comer. Mas, é preciso estar atento, pois ele tem tendência à obesidade.

Portanto, leve seu beagle para passear regularmente e permita que ele gaste toda a sua inesgotável energia. E não se deixe levar por sua fofura e olhos suplicantes: cachorros dessa raça são teimosos e gostam de fazer apenas o que querem, tornando o treinamento extremamente importante e obrigatório.

Origem: Inglaterra e Estados Unidos

Peso: 9-13,5 kg

Altura: 33-38 cm

Expectativa de vida: 10-15 anos""",
        ),
      );

      racas.add(
        RacasModel(
          raca: 'Doberman',
          porte: 'Grande',
          conteudo: """Por trás da “cara de mau”, jeito imponente e corpo forte e musculoso do doberman, existe uma personalidade bastante afetuosa, leal, companheira e muito protetora. Ele é um grande amigo para toda a família e um ótimo cão de guarda. Também chamado de dobie e doberman pinscher, essa raça é conhecida por sua incrível inteligência e obediência. Não é à toa que esse cachorro é perfeito para atuar em resgates e como policial.

O doberman é um cachorro que não costuma dar trabalho no dia a dia, como ocorre com raças que exigem banho, tosa e escovação frequentemente. Por outro lado, necessita de um nível muito elevado de exercícios físicos para manter todo o seu vigor e saúde.

Origem: Alemanha

Peso: 27-45 kg

Altura: 61-71 cm

Expectativa de vida: 10-12 anos""",
        ),
      );

      racas.add(
        RacasModel(
          raca: 'Chihuahua',
          porte: 'Pequeno',
          conteudo: """Os chihuahuas são pequenos no tamanho (é a menor raça do mundo!), mas são grandes no quesito animação. São capazes de surpreender com a sua energia e vontade de brincar, o que os torna cachorros ideais para a família. Inteligentes e muito devotos ao seu tutor, esses cachorros são capazes conquistar qualquer um com a sua personalidade única, segura e atrevida – sem falar em sua admirável inteligência.

Origem: México

Peso: 1-3 kg

Altura: 15-23 cm

Expectativa de vida: 12-20 anos""",
        ),
      );
      racas.add(
        RacasModel(
          raca: 'Lhasa apso',
          porte: 'pequeno',
          conteudo: """Há quem o chame de iasa apso, mas o correto é lhasa apso. É um cachorro que adora o tutor, mas não é obcecado por colo. Gosta de estar por perto, mas não necessariamente com contato físico. Os cachorros dessa raça são alegres e divertidos, mas não são muito receptivos com estranhos e tendem a ter ciúme de seus alimentos, brinquedos e tudo que considerarem valioso.

O pelo longo do lhasa apso é característico da raça e requer grande manutenção. Por isso, muitos tutores optam pela tosa para deixá-lo curto – o que apenas reduz o tempo de manutenção, mas não a frequência. Também característico da raça é o hábito de vigiar: seja a porta de casa ou a janela, é um cachorro atento e que gosta de latir para alertar.

Origem: Tibete

Peso: 5-8 kg

Altura: 23-25 cm

Expectativa de vida: 12-15 anos""",
        ),
      );
    }

    return new Future.value(racas);
  }

}
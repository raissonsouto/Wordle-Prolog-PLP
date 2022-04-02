:- include('Jogo.pl').
:- include('SeletorDePalavras.pl').

main :-
  restart,
  wordleLogo,
  write("\n"),
  mainMenu,
  halt.

mainMenu:-
  printMenu,
  lerString(Entrada),
  write("\n"), 
  menu(Entrada),
  mainMenu.

%guia menu
printMenu:-
  write("  [J]ogar \n"),
  write("  [M]anual \n"),
  write("  [D]esenvolvedores \n"),
  write("  [S]air\n"),
  write("  Digite uma letra >>> ").
  
%comandos menu.
menu(Entrada):-
  Entrada = "D" -> creditos;
  Entrada = "d" -> creditos;
  Entrada = "S" -> sair;
  Entrada = "s" -> sair;
  Entrada = "M" -> manual;
  Entrada = "m" -> manual;
  Entrada = "J" -> write("  JOGO INICIADO! \n"), seleciona(Palavra), jogo(0, Palavra, "");
  Entrada = "j" -> write("  JOGO INICIADO! \n"), seleciona(Palavra), jogo(0, Palavra, "");
  true -> write("   Letra "), write(Entrada), write(" Inexistente.\n\n").

wordleLogo:- 
  write("\n"),
  write(" ###############################################################################\n"),
  write(" #                                                                             #\n"),
  write(" #                           BEM VINDO(A) AO                                   #\n"),
  write(" #                                                                             #\n"),
  write(" #                             W O R D L E                                     #\n"),
  write(" #                                                                             #\n"),
  write(" ###############################################################################\n").

manual:- 
  write("\n"),
  write("#############################################################################################\n"),
  write("#                                                                                           #\n"),
  write("#                                       MANUAL DO JOGO                                      #\n"),
  write("#                                                                                           #\n"),
  write("#############################################################################################\n"),
  write("\nO jogo consiste em uma palavra de 5 letras selecionada aleatoriamente, seu objetivo como\n"),
  write("JOGADOR consiste em tentar adivinhar em 6 tentativas! Boa sorte!\n"),
  write("\n1) Digite uma palavra de 5 letras\n"),
  write("    1.1) Receba um feedback via terminal, em cores, sobre as 5 letras digitadas\n"),
  write("2) FEEDBACK EM CORES NO TERMINAL SOBRE AS LETRAS ESCRITAS \n"),
  write("    2.1) Verde: EXISTE e LOCAL CORRETO.\n"),
  write("    2.2) Amarelo: EXISTE e LOCAL ERRADO.\n"),
  write("    2.3) Vermelho: INEXISTE.\n"),
  write("3) VITORIA OU DERROTA?\n"),
  write("    3.1) WIN: Se dentro das 6 tentativas o JOGADOR conseguir advinhar a palavra, ele vence.\n"),
  write("    3.2) LOSE: Se o JOGADOR errar a sexta tentativa, ele perde.\n"),
  write("\n").

creditos:- 
  write("\n"),
  write("#############################################################################################\n"),
  write("#                                                                                           #\n"),
  write("#                                 DESENVOLVEDORES                                           #\n"),
  write("#             Jogo desenvolvido na disciplina de PLP pela UFCG 2021.1 em Prolog             #\n"),
  write("#                                                                                           #\n"),
  write("#############################################################################################\n"),
  write("\n"),
  write("Nome do jogo: WORDLE\n"),
  write("Professor: Everton Leandro Galdino Alves\n"),
  write("Alunos:\n"),
  write("Raisson Souto (119210173)\n"),
  write("Luis Eduardo (119210431)\n"),
  write("Gabriel dos Santos (120110458)\n"),
  write("Joao Luciano (120110612)\n"),
  write("Rembrandt Costa (120110785)\n"),
  write("\n"), 
  write("Baseado no jogo TERMO -> https://term.ooo  \n"),
  write("\n").

sair:- 
  write("\n"),
  write("#####################################################################\n"),
  write("#                       OBRIGADO PELA VISITA! :)                    #\n"),
  write("#####################################################################\n"),
  halt.
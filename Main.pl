:- include('Jogo.pl').

main :-
  wordleLogo,
  mainMenu,
  halt.

mainMenu:-
  printMenu,
  lerString(Entrada),
  menu(Entrada),
  mainMenu.

lerString(X):- read_line_to_codes(user_input, E), atom_string(E,X).

printMenu:-
  write("  [J]ogar \n"),
  write("  [M]anual \n"),
  write("  [H]istórico\n"),
  write("  [C]réditos \n"),
  write("  [S]air\n"),
  write("  Digite uma letra >>> ").


menu("C"):- creditos.  
menu("J"):- write("jogar").
menu("M"):- manual.
menu("H"):- write("historico").
menu("S"):- sair.

menu(Entrada):- 
  write(" Opção"), write(Entrada), write(" Inválida").



wordleLogo:- 
  write("\n"),
  write("###############################################################################\n"),
  write("#                                                                             #\n"),
  write("#                           BEM VINDO(A) AO                                   #\n"),
  /*write("#            ██╗    ██╗ ██████╗ ██████╗  ██████╗ ██╗     ███████╗             #\n"),
  write("#            ██║    ██║██╔═══██╗██╔══██╗██╔═══██╗██║     ██╔════╝             #\n"),
  write("#            ██║ █╗ ██║██║   ██║██████╔╝██║   ██║██║     █████╗               #\n"),
  write("#            ██║███╗██║██║   ██║██╔══██╗██║   ██║██║     ██╔══╝               #\n"),
  write("#            ╚███╔███╔╝╚██████╔╝██║  ██║██████╔╝╚███████ ███████═╗            #\n"),
  write("#             ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═════╝  ╚══════╝ ╚══════╝            #\n"),*/
  write("###############################################################################\n").

manual:- 
  write("\n"),
  write("#############################################################################################\n"),
  write("#                                                                                           #\n"),
  write("#                                       MANUAL DO JOGO                                      #\n"),
  write("#                                                                                           #\n"),
  write("#############################################################################################\n"),
  write("\nO jogo consiste em uma palavra de 5 letras selecionada\n"),
  write("aleatoriamente, seu objetivo como JOGADOR é tentar adivinhá-la em 6 tentativas!\n"),
  write("\n1) Digite uma palavra de 5 letras\n"),
  write("1.1) Receba um feedback via terminal, em cores, sobre as 5 letras digitadas\n"),
  write("2) FEEDBACK EM CORES NO TERMINAL\n"),
  write("2.1) Verde: a letra EXISTE e está no LOCAL CORRETO.\n"),
  write("2.2) Amarelo: a letra EXISTE, porém está no local errado.\n"),
  write("2.3) Vermelho: a letra INEXISTE na palavra.\n"),
  write("3) VITORIA OU DERROTA?\n"),
  write("3.1) Vitória: Se dentro das 6 tentativas o JOGADOR conseguir advinhar a palavra, ele vence.\n"),
  write("3.2) Derrota: Se o JOGADOR errar após a sexta tentativa, ele perde.\n").

creditos:- 
  write("\n"),
  write("#############################################################################################\n"),
  write("#                                                                                           #\n"),
  write("#                                CRÉDITO AOS DESENVOLVEDORES                                #\n"),
  write("#             Jogo desenvolvido na disciplina de PLP pela UFCG 2021.1 em Prolog             #\n"),
  write("#                                                                                           #\n"),
  write("#############################################################################################\n"),
  write("\n"),
  write("Título do jogo: WORDLE\n"),
  write("Professor: Everton Leandro Galdino Alves\n"),
  write("Alunos:\n"),
  write("Raisson Souto (119210173)\n"),
  write("Luis Eduardo (119210431)\n"),
  write("Gabriel dos Santos (120110458)\n"),
  write("Joao Luciano (120110612)\n"),
  write("Rembrandt Costa (120110785)\n"),
  write("\n"), 
  write("Baseado no jogo TERMO -> https://term.ooo  \n").

/*adicionar funcao de saida*/
sair:- 
  write("\n"),
  write("#####################################################################\n"),
  write("#                      ATÉ MAIS! OBRIGADO POR JOGAR :)              #\n"),
  write("#####################################################################\n"),
  halt.
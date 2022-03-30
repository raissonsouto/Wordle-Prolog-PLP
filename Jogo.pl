:- include('ColorfulPrint.pl').
:- include('GuessChecker.pl').

jogo(6, PalavraCerta):- loseScreen(PalavraCerta).
jogo(QtdLoops, PalavraCerta):-
    recebeTentativa(Tentativa),
    %guessChecker(Tentativa, PalavraCerta, Metadado),
    colorfulPrint(Tentativa, Metadado, Resultado),
    Metadado =:= "VVVVV" -> winScreen(PalavraCerta);
    NewQtdLoops is QtdLoops + 1,
    jogo(NewQtdLoops, PalavraCerta).

recebeTentativa(Entrada):-
    write("Qual a palavra secreta? "),
    read(Entrada).
    /*validaEntrada(Entrada) -> Tentativa is Entrada;
    write("Palavra nao aceita. Tente novamente: ")
    recebeTentativa(Tentativa).

validaEntrada(Tentativa):-
    Tentativa =:= "teste".*/

winScreen(PalavraCerta):-
    write("PALAVRA CORRETA: "),
    colorfulPrint(PalavraCerta, "VVVVV", Resultado),
    write("\n"),
    write("###############################################################################\n"),
    write("#                                                                             #\n"),
    write("                                   "),
    colorfulPrint("YOU WIN","VVVVVVV", Saida),
    write("#                                                                             #\n"),
    write("###############################################################################\n").

loseScreen(PalavraCerta):-
    write("PALAVRA CORRETA: "),
    colorfulPrint(PalavraCerta, "VVVVV", Resultado),
    write("\n"),
    write("###############################################################################\n"),
    write("#                                                                             #\n"),
    write("                                   "),
    colorfulPrint("YOU LOSE","XXXXXXXX", Saida),          
    write("#                                                                             #\n"),
    write("###############################################################################\n").

main:-
    jogo(0, "teste"),
    halt.
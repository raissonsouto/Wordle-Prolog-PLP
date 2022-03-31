:- include('ColorfulPrint.pl').
:- include('GuessChecker.pl').

jogo(6, PalavraCerta, Print):- loseScreen(PalavraCerta).
jogo(QtdLoops, PalavraCerta, Print):-
    recebeTentativa(Tentativa),
    write(Print),
    %guessChecker(Tentativa, PalavraCerta, Metadado),
    colorfulPrintLn(Tentativa, "VVVVO", Resultado),
    write("\n"),
    string_concat(Print, Resultado, NewPrint),
    ("VVVVO" = "VVVVV" -> winScreen(PalavraCerta);
    NewQtdLoops is QtdLoops + 1,
    jogo(NewQtdLoops, PalavraCerta, NewPrint)).

recebeTentativa(Entrada):-
    write("Qual a palavra secreta? "),
    read(Entrada),
    write("\n").
    /*validaEntrada(Entrada) -> Tentativa is Entrada;
    write("Palavra nao aceita. Tente novamente: ")
    recebeTentativa(Tentativa).

validaEntrada(Tentativa):-
    Tentativa =:= "teste".*/

winScreen(PalavraCerta):-
    write("\nPALAVRA CORRETA: "),
    colorfulPrint(PalavraCerta, "VVVVV", Resultado),
    write("\n"),
    write("###############################################################################\n"),
    write("#                                                                             #\n"),
    write("                                   "),
    colorfulPrint("YOU WIN","VVVVVVV", Saida),
    write("#                                                                             #\n"),
    write("###############################################################################\n").

loseScreen(PalavraCerta):-
    write("\nPALAVRA CORRETA: "),
    colorfulPrint(PalavraCerta, "VVVVV", Resultado),
    write("\n"),
    write("###############################################################################\n"),
    write("#                                                                             #\n"),
    write("                                   "),
    colorfulPrint("YOU LOSE","XXXXXXXX", Saida),          
    write("#                                                                             #\n"),
    write("###############################################################################\n").

main:-
    jogo(0, "teste", ""),
    halt.
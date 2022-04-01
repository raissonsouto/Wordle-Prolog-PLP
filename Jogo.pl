:- include('ColorfulPrint.pl').
:- include('GuessChecker.pl').

lerString(X):- read_line_to_codes(user_input, E), atom_string(E,X).

jogo(6, PalavraCerta, Print):- loseScreen(PalavraCerta).

jogo(QtdLoops, PalavraCerta, Print):-
    recebeTentativa(Tentativa),
    write(Print),
    guessChecker(Tentativa, PalavraCerta, Metadado),
    colorfulPrintLn(Tentativa, Metadado, Resultado),
    write("\n"),
    string_concat(Print, Resultado, NewPrint),
    (Metadado = "VVVVV" -> winScreen(PalavraCerta);
    NewQtdLoops is QtdLoops + 1,
    jogo(NewQtdLoops, PalavraCerta, NewPrint)).

recebeTentativa(Entrada):-
    write("Qual a palavra secreta? "),
    lerString(Entrada),
    write("\n"),
    (verificaPalavra(Entrada)->write("\n");
    write("Palavra nao existe.\n"), recebeTentativa(Entrada)).

winScreen(PalavraCerta):-
    write("\nPALAVRA CORRETA: "),
    colorfulPrint(PalavraCerta, "VVVVV", Resultado),
    write("###############################################################################\n"),
    write("#                                                                             #\n"),
    write("                                   "),
    colorfulPrint("YOU WIN","VVVVVVV", Saida),
    write("#                                                                             #\n"),
    write("###############################################################################\n").

loseScreen(PalavraCerta):-
    write("\nPALAVRA CORRETA: "),
    colorfulPrint(PalavraCerta, "VVVVV", Resultado),
    write("###############################################################################\n"),
    write("#                                                                             #\n"),
    write("                                   "),
    colorfulPrint("YOU LOSE","XXXXXXXX", Saida),          
    write("#                                                                             #\n"),
    write("###############################################################################\n").

/*main:-
    jogo(0, "teste", ""),
    halt.*/
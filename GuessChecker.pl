main :-
    read(A),
    atom_codes(A, B),
    atom_chars(A, C),
    correctLetter('o', C, Alo),
    write(Alo).

comparator(A, A, ['V']) :- !.
comparator(A, B, [A]).


correctLetter(X, [], []) :- !.

correctLetter(X, [X|Y], Res) :-
    correctLetter(X, Y, Res1),
    append(['E'], Res1, Juncao),
    writeln(Juncao),
    Res is Juncao,
    !.

correctLetter(X, [Y|Z], Res) :-
    correctLetter(X, Z, Res1),
    append(['X'], Res1, Juncao),
    writeln(Juncao),
    Res is Juncao.

correctPositions([], [], []) :- !.
correctPositions([A|B], [C|D], Res) :-
    correctPositions(B, D, Res2),
    comparator(A, C, Res1),
    write("A:"),
    writeln(A),
    write("C:"),
    writeln(C),
    write("Res1:"),
    writeln(Res1),
    write("Res2:"),
    writeln(Res2),
    append(Res1, Res2, Juncao),
    write("Juncao:"),
    writeln(Juncao),
    Res is Juncao,
    writeln(".").

guessChecker(Tentativa, Correto, Res) :-
    correctPositions(Tentativa, Correto, Res_C),
    
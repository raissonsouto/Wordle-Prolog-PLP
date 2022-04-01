comparator(A, A, 'V') :- !.
comparator(A, _, A).

correctPositions([], [], '', '') :- !.
correctPositions([A|B], [C|D], Ten, Res) :-
    comparator(A, C, R1),
    comparator(C, A, R2),
    correctPositions(B, D, Ten1, Res1),
    atom_concat(R1, Ten1, Ten2),
    atom_concat(R2, Res1, Res2),
    Res = Res2,
    Ten = Ten2.

correctLetter(_, [], '') :- !.
correctLetter(X, [X|Y], Res) :-
    atom_string(Y, Y1),
    atom_concat('E', Y1, Juncao),
    Res = Juncao,
    !.
correctLetter(X, [Y|Z], Res) :-
    correctLetter(X, Z, Res1),
    atom_concat(Y, Res1, Juncao),
    Res = Juncao.

repeat([], Tentativa, Tentativa) :- !.
repeat(['V'|B], Tentativa, Metadado) :-
    repeat(B, Tentativa, Saida),
    Metadado = Saida,
    !.
repeat([A|B], Tentativa, Metadado) :-
    correctLetter(A, Tentativa, M),
    atom_chars(M, M1),
    repeat(B, M1, Metadado1),
    Metadado = Metadado1.

wrongLetter([], '') :- !.
wrongLetter(['V'|Y], Res) :- 
    wrongLetter(Y, Res1),
    atom_concat('V', Res1, Res2),
    Res = Res2,
    !.
wrongLetter(['E'|Y], Res) :-
    wrongLetter(Y, Res1),
    atom_concat('E', Res1, Res2),
    Res = Res2,
    !.
wrongLetter([_|Y], Res) :-
    wrongLetter(Y, Res1),
    atom_concat('X', Res1, Res2),
    Res = Res2.

guessChecker(G, A, Output) :-
    atom_chars(G, Guess),
    atom_chars(A, Answer),
    correctPositions(Guess, Answer, Tentativa, Resposta),
    atom_chars(Tentativa, Tentativa1),
    atom_chars(Resposta, Resposta1),
    repeat(Resposta1, Tentativa1, Metadado),
    wrongLetter(Metadado, Res),
    Output = Res.

verificaPalavra(Palavra) :-
	open('palavras.json', read, Stream),
	read(Stream, A),
	close(Stream),
	member(Palavra, A).
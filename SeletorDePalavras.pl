removerPalavra(_, [], []).
removerPalavra(A, [A|B], B).
removerPalavra(A, [B|C], [B|D]) :- removerPalavra(A, C, D).

update(Palavra, Array):-
	open('palavras.json', write, Out),
	removerPalavra(Palavra, Array, NewArray),
	atomic_list_concat(NewArray, ',', Atom),
	atom_string(Atom, NA),
	atom_concat('[', NA, Res),
	atom_concat(Res, '].', Res1),
	write(Out, Res1),
	close(Out).

restart:-
	open('tentativas.json', read, Stream),
	read(Stream, A),
	close(Stream),
	open('palavras.json', write, Out),
	atomic_list_concat(A, ',', Atom),
	atom_string(Atom, NA),
	atom_concat('[', NA, Res),
	atom_concat(Res, '].', Res1),
	write(Out, Res1),
	close(Out).

seleciona(Palavra) :-
	open('palavras.json', read, Stream),
	read(Stream, A),
	length(A, Len),
	L is Len - 1,
	random_between(0, L, Index),
	nth0(Index, A, Palavra),
	close(Stream),
	update(Palavra, A).
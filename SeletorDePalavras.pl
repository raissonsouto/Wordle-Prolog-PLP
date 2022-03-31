seleciona(Palavra) :-
	open('palavras.json', read, Stream),
	read(Stream, A),
	length(A, Len),
	L is Len - 1,
	random_between(0, L, Index),
	nth0(Index, A, Palavra),
	close(Stream).

:- use_module(library(apply)).
:- use_module(library(lists)).

concatenate(StringList, StringResult) :-
    maplist(atom_chars, StringList, Lists),
    append(Lists, List),
    atom_chars(StringResult, List).

colorString(X, 'X', Saida) :- concatenate(["\u001b[31m", X, "\u001b[0m"], Saida).
colorString(X, 'V', Saida) :- concatenate(["\u001b[32m", X, "\u001b[0m"], Saida).
colorString(X, 'O', Saida) :- concatenate(["\u001b[33m", X, "\u001b[0m"], Saida).


textColorizer([TentativaHead|[]], [MetadadoHead|[]], Resultado):-
    colorString(TentativaHead, MetadadoHead, Resultado).

textColorizer([TentativaHead|TentativaTail], [MetadadoHead|MetadadoTail], Resultado):-
    colorString(TentativaHead, MetadadoHead, Saida),
    textColorizer(TentativaTail, MetadadoTail, OutrosResultados),
    atom_concat(Saida, OutrosResultados, Resultado).

colorfulPrint(Tentativa, Metadado, Resultado):-
    atom_chars(Tentativa, TentativaList),
    atom_chars(Metadado, MetadadoList),
    textColorizer(TentativaList, MetadadoList, Resultado),
    write(Resultado).

/* EXEMPLO
main:-
    colorfulPrint("teste", "VVOXX", Resultado),
    halt.*/
concatenate(StringList, StringResult) :-
    maplist(atom_chars, StringList, Lists),
    append(Lists, List),
    atom_chars(StringResult, List).

colorString(X, "red", Saida) :- concatenate(["\u001b[31m", X, "\u001b[0m"], Saida).
colorString(X, "green", Saida) :- concatenate( ["\u001b[32m", X, "\u001b[0m"], Saida).
colorString(X, "yellow", Saida) :- concatenate( ["\u001b[33m", X, "\u001b[0m"], Saida).

textColorizer():-

colorfulPrint():-
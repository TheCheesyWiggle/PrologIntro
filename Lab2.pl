length_list([],0).
length_list([_|T],W):-
    length_list(T,V),
    W is V+1.

take_list(_,[],[]).
take_list(0,_,[]).
take_list(N, [X|XS], [X|W]):-
   	N1 is N-1,
    take_list(N1, XS, W).

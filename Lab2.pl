length_list([],0).
length_list([_|T],W):-
    length_list(T,V),
    W is V+1.

take_list(_,[],[]).
take_list(0,_,[]).
take_list(N, [X|XS], [X|W]):-
   	N1 is N-1,
    take_list(N1, XS, W).

drop_list(_,[],[]).
drop_list(0,X,X).
drop_list(N, [_|XS], W):-
    N1 is N-1,
    drop_list(N1, XS, W).

lickety_split(_,[],[],[]).
lickety_split(0,X,[],X).
lickety_split(N, [X|XS], [X|AS], BS):-
    N1 is N-1,
    lickety_split(N1, XS, AS, BS ).

squares([],[]).
squares([X,XS], [W|WS]):-
    squares(XS,WS),
    W is X*X.

evens([],[]).
evens([X|XS],W):-
    1 is X mod 2,
    evens(XS, W).
evens([X|XS],[X|W]):-
    0 is X mod 2,
    evens(XS, W).

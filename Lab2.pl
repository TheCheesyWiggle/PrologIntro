length_list([],0).
length_list([_|T],W):-
    length_list(T,V),
    W is V+1.

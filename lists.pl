sum_list([],0).
sum_list([X|XS], W) :-
    sum_list(XS, V),
    W is X+V.

max_list([E],E).
max_list([X|XS],X) :-
    max_list(XS, V), 
    X > V.
max_list([X|XS], V) :-
    max_list(XS, V),
    X =< V.

member_list(E,[E|_]).
member_list(E, [_|XS]) :-
    member_list(E, XS).

reverse_list([],[]).
reverse_list([X|XS],W) :-
    reverse_list(XS,V),
    append(V, [X], W).
    
insert_list(E,[],[E]).
insert_list(E,[X|XS], [E,X|XS]):-
    E < X.
insert_list(E,[X|XS], [X|V]):-
    E>=X,
    insert_list(E,XS,V).
    

main :-
    %sum_list([2,3,5,6],X), write(X),
    %max_list([2,3,5,6],X), write(X),
    %member_list(d, [a,b,c,d,e]),
    %reverse_list([2,3,4,5,6],X),write(X),
    insert_list(7,[2,3,4,5,6],X),write(X).

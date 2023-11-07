factorial(0, 1).
factorial(N, W)  :-
    N1 is N - 1,
    factorial(N1,V),
    W is N * V.

main :-
    factorial(5,X), write(X).

%Prolog.
%say.

say :- write('Hello World!').

hello :-
printstring("Hello World!").

printstring([]).
printstring([H|T]) :- put(H), printstring(T).


% interaktive Konsole:
    % prolog
    % [fileName].
    % say.
% oder
    % prolog fileName.pl
    % say.
% exit in der Konsole:
    % halt. 

% runMe    
    % swipl -q -s helloworld.pl -t say

say :- write('Hello World!').

hello :-
printstring("Hello World!").

printstring([]).
printstring([H|T]) :- put(H), printstring(T).


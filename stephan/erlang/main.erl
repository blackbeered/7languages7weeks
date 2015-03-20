% Execution:
% erl - interactive mode
% c(main). - compilation
% main:hello_world(). - Output

% Stop init:stop().c 

% Magic Erlang
% main:module_info(). - shows module info

% first statement in an erlang file, module name
-module(main).

% API, modules interface
-export([
    add/2, 
    hello_world/0, 
    greet_and_add_two/1,
    head/1,
    tail/1,
    equal/2,
    old_enough/1,
    erlang_module_info/0,
    fac/1,
    len/1,
    increaseListItems/1,
    decreaseListItems/1
]).

% print example
hello_world() -> io:fwrite("hello, world\n").

% calc example
add(A,B) -> A + B.

% function call example
greet_and_add_two(A) ->
    hello_world(),
    add(A,2).

% lists and pattern matching
head([H|_]) -> H.
tail([_|T]) -> T.

equal(X,X) -> true;
equal(_,_) -> false.

% guards
% , is && 
% ; is ||
old_enough(X) when X >= 10, X < 99 -> true; 
old_enough(_) -> false.

% erlang module
erlang_module_info() ->
    R1 = erlang:list_to_integer("54"), % 54
    R2 = erlang:integer_to_list(54), % "54"
    R3 = erlang:list_to_float("54.32"), % 54.32
    R4 = erlang:atom_to_list(true), % "true"
    R5 = erlang:list_to_bitstring("hi there"), % <<"hi there">>
    R6 = erlang:bitstring_to_list(<<"hi there">>), % "hi there"
    {R1, R2, R3, R4, R5, R6}.
    
% recursion
fac(0) -> 1;
fac(N) when N > 0 -> N * fac(N-1).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

% high order fundtions
map(_, []) -> [];
map(F, [H|T]) -> [F(H)| map(F,T)].

increase(X) -> X + 1.

increaseListItems(L) ->
    Result = map(fun increase/1, L),
    {Result}.
    
% Anonyme Funktionen
decreaseListItems(L) ->
    {map(fun(X) -> X + 1 end, L)}





















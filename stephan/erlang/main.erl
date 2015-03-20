% Execution:
% erl - interactive mode
% c(main). - compilation
% main:hello_world(). - Output

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
    erlang_module_info/0
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
    erlang:list_to_integer("54"). % 54




















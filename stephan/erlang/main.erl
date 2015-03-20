% Execution:
% erl - interactive mode
% c(main). - compilation
% main:hello_world(). - Output

% Magic Erlang
% main:module_info(). - shows module info

% first statement in an erlang file, module name
-module(main).

% API, modules interface
-export([add/2, hello_world/0, greet_and_add_two/1]).

hello_world() -> io:fwrite("hello, world\n").
add(A,B) -> A + B.

greet_and_add_two(A) ->
    hello_world(),
    add(A,2).



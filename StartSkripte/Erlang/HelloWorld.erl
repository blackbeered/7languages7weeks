% Execution:
% erl - interactive mode
% c(HelloWorld). - compilation
% HelloWorld:hello_world(). - Output

% Stop init:stop().c 

% Magic Erlang
% HelloWorld:module_info(). - shows module info

% first statement in an erlang file, module name
-module(HelloWorld).

% API, modules interface
-export([hello_world/0]).

% print example
hello_world() -> io:fwrite("hello, world\n").
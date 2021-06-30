-module(buffer).

%% API exports
-export([process/2]).

%% N ==  numero de processos
%% M ==  numero de vezes uma thread cede sua vez
process(M, N) -> 
    io:format("[buffer] started ~n"),
    statistics(runtime),
    H = lists:foldl(
      fun(Id, Pid) -> spawn_link(fun() -> mthread(Id, Pid, M) end) end,
      self(),
      lists:seq(N, 2, -1)),
      statistics(runtime),
      H ! M.
      mthread(1, H, M).

mthread(Id, Pid, M) ->
  receive
      0 -> 
        {_, Time} = statistics(runtime),
        io:format("Thread ~p: ~p processos cedidos em ~p ms. Thread Finalizando ~n", [self(), M, Time]),
        exit(self(), ok);
      Index ->
        Pid ! Index - 1,
        %io:format("Thread ~p: Cedendo pela ~p vez. ~n", [Id, Index]),
        mthread(Id, Pid, M)
  end.

    

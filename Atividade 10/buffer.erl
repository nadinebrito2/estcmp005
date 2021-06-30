-module(buffer).

%% API exports
-export([process/2]).

%% N ==  numero de processos
%% M ==  numero de vezes uma thread cede sua vez
process(M, N) -> 
    statistics(runtime),
    H = lists:foldl(
      fun(Id, Pid) -> spawn_link(fun() -> mthread(Id, Pid, M) end) end,
      self(),
      lists:seq(N, 2, -1)),
    {_, Time} = statistics(runtime),
    io:format("~p processo criados em ~p ms~n", [N, Time]),
    statistics(runtime),
    H ! M,
    mthread(1, H, M).

mthread(Id, Pid, M) ->
  receive
      1 -> 
        {_, Time} = statistics(runtime),
        io:format("Thread ~p: ~p processos cedidos em ~p ms. Thread Finalizando ~n", [self(), M, Time]),
        exit(self(), ok);
      Index ->
        Pid ! Index - 1,
        %%{_, Time} = statistics(runtime),
        %%io:format("Thread ~p: Cedendo pela ~p vez em ~p ms. ~n", [Id,Index, Time]),
        mthread(Id, Pid, M)
  end.

    

-module(questao3).

-import(lists,[append/2]).

-export([start/2]). 

start(Lst1,Lst2) ->
   Lst3 = append(Lst1,Lst2),
   Set = sets:from_list(Lst3),
   sets:to_list(Set).

-module (questao_10).
-export ([cauda/1]).

aux(X,Y) ->
   if
      X == 1 ->
         Y;
      true ->
         aux((X-1),(Y * X))
   end.

cauda(X) ->
   aux(X,1).

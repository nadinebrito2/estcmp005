-module(questao3).
-import(lists,[append/2]). 
-import(lists,[merge/2]). 
-export([start/0]). 

start() -> 
   Lst1 = [1,2,3], 
   Lst2 = [3,4,5],
   Lst3 = merge(Lst1,Lst2),
   Set = sets:from_list(Lst3),
   sets:to_list(Set).
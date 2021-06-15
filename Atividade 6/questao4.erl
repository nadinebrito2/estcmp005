-module(questao4).
-import(lists,[append/2]). 
-export([start/0]). 

start() -> 
   Lst1 = [1,2,3], 
   Lst2 = [3,5,7,9],
   Lst3 = append(Lst2,Lst1),
   Set = sets:from_list(Lst3),
   Set2 = sets:to_list(Set),
   lists:sort(Set2).
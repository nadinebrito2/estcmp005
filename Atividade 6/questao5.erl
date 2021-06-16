-module (questao5).
-export ([inter/2]).

inter(L1,L2) -> [X || X <- L1, Y <- L2, X == Y].

% BNF


% Estructura de la oracion %
oracion(S0, S) :-
	sintagma_nominal(S0, S1),
	sintagma_verbal(S1, S).


% Sintagmas Nominales %
sintagma_nominal(S0, S) :-
	determinante(S0, S1),
	sustantivo(S1, S).


% Sintagmas Verbales %
sintagma_verbal(S0, S) :-
	verbo(S0, S1),
	sintagma_nominal(S1, S).

sintagma_verbal(S0, S) :- 
	verbo(S0, S).
% Concluye una respuesta al mensaje
% arg0 mensaje
% arg1 respuesta
analizar_respuesta(M, R) :-
	convertir_lista(M, LIST),
	oracion(LIST, []),
	buscar_clave(LIST, KEY),
	tipo_problema(LIST, TYPE),

	(buscar_clave(LIST, KEY) -> 
		tipo_problema(LIST, TYPE),
		solucionador([KEY, TYPE], PROBLEM),
		analizar_problema(PROBLEM)
		; fallo(F), R = F).
	

analizar_problema([H|T], R) :-
	(H == [] ->	
		fallo(F), R = F
		; (problema_coincide(H) -> 
			dar_solucion
			; analizar_problema(T, R)
			)
	).


% Busca si la lista tiene palabras claves
% arg0 oracion en forma lista
% arg1 resultado
buscar_clave([R|_], R) :- clave(R).
buscar_clave([_|T], R) :- buscar_clave(T, R).


% Convierte de string a lista
% arg0 string a convertir
% arg1 lista resultante
convertir_lista(S, L) :- atomic_list_concat(L, ' ', S).


tipo_problema(L, R) :- 
	(es_problema(L) -> R = problema),
	(es_referencia(L) -> R = referencia).

es_problema(L) :- member(problema, L).
es_referencia(L) :- member(referencia, L).
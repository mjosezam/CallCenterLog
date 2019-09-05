
:-consult('bnf/bnf.pl').
:-consult('basedatos/basedatos.pl').


iniciar() :-
	saludar(),
	conversar().


saludar() :-
	imprimir_nombre(bot),
	saludo(S),
	write(S),
	nl().


conversar() :-
	repeat(),

	imprimir_nombre(usuario),
	read(M),
	nl(),

	imprimir_nombre(bot),
	analizar_respuesta(M, R),
	write(R), 
	nl(),

	fin(F),
	(R \= F -> fail; !).


analizar_respuesta(M, M).
	

imprimir_nombre(bot) :-
	bot(N), write(N), write(": ").

imprimir_nombre(usuario) :-
	usuario(N), write(N), write(": ").

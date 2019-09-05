% Verbos
% Referencia LibroPROLOG Proyecto5 [http://mural.uv.es/mijuanlo/PracticasPROLOG.pdf]
% Author GitHub@JoDaniel1412
% Ultimo cambio 03/09/2019 por @JoDaniel1412

% Estructura de la base de datos:
% arg0 cantidad: singular o plural
% arg1 persona: primera, segunda o tercera
% arg2 verbo
% arg3 resto de la lista

%Yo primera persona
% Usted segunda
% El/Ella/Eso tercera

%_________________ A ____________
%Ayudar
verbo(singular, primera, [ayudar|S], S).

%Apagar
verbo(singular, segunda, [apague|S], S).

%_________________ B ____________
%_________________ C ____________
%Comentar
verbo(singular, primera, [comento|S], S).
%_________________ D ____________
%Descargar
verbo(singular, segunda, [descargue|S], S).
verbo(singular, segunda, [descargó|S] ,S).

%Deber
verbo(singular, segunda, [deberá|S], S).
verbo(singular, segunda, [debe|S], S).

%_________________ E ____________
%Estar
verbo(singular, tercera, [está|S], S).
verbo(singular, segunda, [está|S], S).
verbo(plural, primera, [estamos|S], S).

%Empezar
verbo(singular, segunda, [empiece|S], S).

%Esperar
verbo(singular, segunda, [espere|S], S).

%Encender
verbo(singular, tercera, [enciende|S], S).

%Entender
verbo(singular, primera, [entendio|S], S).

%_________________ F ____________
%Funcionar
verbo(singular, tercera, [funciona|S], S).

%Facilitar
verbo(singular, segunda, [facilitar|S], S).
%_________________ G ____________
%_________________ H ____________
%Hacer
verbo(singular, segunda, [haga|S], S).
verbo(plural, primera, [haremos|S], S).
%_________________ I ____________
%Ir
verbo(singular, segunda, [vaya|S], S).
verbo(plural, primera, [vamos|S], S).

%Instalar
verbo(singular, segunda, [instaló|S], S).
verbo(singular, segunda, [instale|S], S).

%Intentar
verbo(singular, segunda, [intente|S], S).
verbo(singular, segunda, [intentó|S], S).

%Imprimir
verbo(singular, tercera, [imprime|S], S).
verbo(singular, tercera, [imprimir|S], S).

%_________________ J ____________

%_________________ K ____________
%_________________ L ____________
%_________________ M ____________
%_________________ N ____________
%Necesitar
verbo(singular, primera, [necesito|S], S).
verbo(singular, tercera, [necesita|S], S).

%_________________ O ____________
%_________________ P ____________
%Poder
verbo(singular, primera, [podré|S], S).
verbo(singular, primera, [puedo|S], S).
verbo(singular, segunda, [pueda|S], S).
verbo(singular, segunda, [puede|S], S).
verbo(singular, segunda, [podría|S], S).

%Probar
verbo(singular, segunda, [pruebe|S], S).

%Persistir
verbo(singular, tercera, [persiste|S], S).


%_________________ Q ____________
%_________________ R ____________
%Realizar
verbo(singular, primera, [realicé|S], S).

%Revisar
verbo(singular, segunda, [revise|S], S).

%_________________ S ____________
%Ser
verbo(singular, tercera, [es|S], S).
verbo(singular, segunda, [es|S], S).
verbo(plural, tercera, [son|S], S).

%_________________ T ____________
%Tener
verbo(singular, tercera, [tenga|S], S).
verbo(singular, primera, [tengo|S], S).
verbo(plural, tercera, [tiene|S], S).
verbo(singular, segunda, [tendrá|S], S).

%_________________ U ____________
%Utilizar
verbo(singular, tercera, [utiliza|S], S).
verbo(plural, tercera, [utilizan|S], S).
%_________________ V ____________

%_________________ W ____________
%_________________ X ____________
%_________________ Y ____________
%_________________ Z ____________


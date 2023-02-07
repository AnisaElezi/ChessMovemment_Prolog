/*  Anisa SHEHU */
/* Artificial Intelligence  Module */
/* UPT - 2015 */

/************** KODI I PROGRAMIT **************/


/* Path midis X dhe Y gjendet duke thirrur path me 3 terma*/
path(X,Y) :- path(X,Y,[X]).

/* Rasti i fundit, ne kete pike printohet lista e rruges */
path(Z,Z,L) :- !, printoList(L).

/* Thirrjetrekursivete path me 3 terma. Kerkohet nje levizje nga X ne Z */
path(X,Y,L) :- levizje(X,Z),

/* Sigurohemiqekalojme ne njekutikunukkemikaluar me pare per teshmangurciklet e pafundme  */
not(anetar(Z,L)),

/* KerkojmenjeRrugenga Z te Y */
path(Z,Y,[Z|L]).

/********PREDIKATAT E 8 LEVIZJEVE TE MUNDSHME TE KALIT ********/

levizje(X,Y) :-
	Kolona_X is X mod 8,
	Rreshti_X is X / 8,
Kolona_Y is Kolona_X + 1,        % 1 levizjedjathtas
Kolona_Y< 8,
Rreshti_Y is Rreshti_X + 2,      % 2 levizjeposhte
Rreshti_Y< 8,
	Y is Rreshti_Y * 8 + Kolona_Y,
	Y >= 0,
	X >= 0,
	X < 64,
	Y < 64.

levizje(X,Y) :-
	Kolona_X is X mod 8,
	Rreshti_X is X // 8,
Kolona_Y is Kolona_X + 1,        % 1 levizje djathtas
Kolona_Y< 8,
Rreshti_Y is Rreshti_X - 2,      % 2 levizje larte
	Rreshti_Y>= 0,
	Y is Rreshti_Y * 8 + Kolona_Y,
	Y >= 0,
	X >= 0,
	X < 64,
	Y < 64.

levizje(X,Y) :-
	Kolona_X is X mod 8,
	Rreshti_X is X // 8,
Kolona_Y is Kolona_X - 1,        % 1 levizjemajtas
Kolona_Y>= 8,
Rreshti_Y is Rreshti_X + 2,      % 2 levizjeposhte
	Rreshti_Y< 8,
	Y is Rreshti_Y * 8 + Kolona_Y,
	Y >= 0,
	X >= 0,
	X < 64,
	Y < 64.

levizje(X,Y) :-
	Kolona_X is X mod 8,
	Rreshti_X is X // 8,
Kolona_Y is Kolona_X - 1,        % 1 levizjemajtas
Kolona_Y>= 8,
Rreshti_Y is Rreshti_X - 2,      % 2 levizjelarte
	Rreshti_Y>= 8,
	Y is Rreshti_Y * 8 + Kolona_Y,
	Y >= 0,
	X >= 0,
	X < 64,
	Y < 64.

levizje(X,Y) :-
	Kolona_X is X mod 8,
	Rreshti_X is X // 8,
Kolona_Y is Kolona_X + 2,        % 2 levizjedjathtas
Kolona_Y< 8,
Rreshti_Y is Rreshti_X + 1,      % 1 levizjeposhte
	Rreshti_Y< 8,
	Y is Rreshti_Y * 8 + Kolona_Y,
	Y >= 0,
	X >= 0,
	X < 64,
	Y < 64.

levizje(X,Y) :-
	Kolona_X is X mod 8,
	Rreshti_X is X // 8,
Kolona_Y is Kolona_X + 2,        % 2 levizjedjathtas
Kolona_Y< 8,
Rreshti_Y is Rreshti_X - 1,      % 1 levizjelarte
	Rreshti_Y>= 0,
	Y is Rreshti_Y * 8 + Kolona_Y,
	Y >= 0,
	X >= 0,
	X < 64,
	Y < 64.

levizje(X,Y) :-
	Kolona_X is X mod 8,
	Rreshti_X is X // 8,
Kolona_Y is Kolona_X - 2,        % 2 levizjemajtas
Kolona_Y>= 0,
Rreshti_Y is Rreshti_X + 1,      % 1 levizjeposhte
	Rreshti_Y< 8,
	Y is Rreshti_Y * 8 + Kolona_Y,
	Y >= 0,
	X >= 0,
	X < 64,
	Y < 64.

levizje(X,Y) :-
	Kolona_X is X mod 8,
	Rreshti_X is X // 8,
Kolona_Y is Kolona_X - 2,        % 2 levizjemajtas
Kolona_Y>= 0,
Rreshti_Y is Rreshti_X - 1,      % 1 levizjelarte
	Rreshti_Y>= 0,
	Y is Rreshti_Y * 8 + Kolona_Y,
	Y >= 0,
	X >= 0,
	X < 64,
	Y < 64.


/**************PREDIKATA NDIHMESE **************/
/* Shfaqja e listes me pikat e rruges ne rastin e listes boshe */

printoList([]).

/* Predikata baze per rastin e listes joboshe */

printoList([H|T]) :- write(H),nl,printoList(T).

/* Predikatat e testimit te anetaresise ne liste */

anetar(H,[H|_]).
anetar(A,[_|T]) :- anetar(A,T).



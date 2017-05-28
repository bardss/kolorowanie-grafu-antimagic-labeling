readFile():-
	open('graph.txt', read, Stream),
	readFile(Stream,Lines),
	close(Stream),!,
	write(Lines).

readFile(Stream,[]):-
	at_end_of_stream(Stream).

readFile(Stream, [X|L]):-
	\+ at_end_of_stream(Stream),
	read(Stream,X),
	readFile(Stream,L).

writeFile():-
	open('hello.txt',write,Stream),
	write(Stream,'wpisany tekst'),
	nl(Stream),
	close(Stream).
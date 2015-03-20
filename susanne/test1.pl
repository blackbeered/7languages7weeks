in(X,[X|_]).
in(X,[_|T]):-in(X,T).

sublist([],_).
sublist([H1|T1],[H1|T2]):-sublist(T1,T2).
sublist([_|T1],[_|T2]):-sublist(T1,T2).

nilpferd(N) :- 
    Strasse=[Haus1,Haus2,Haus3],
    in(haus(rot,australier,_), Strasse),
    in(haus(gruen,_,_), Strasse),
    in(haus(blau,_,_), Strasse),
    in(haus(_,italiener,tiger), Strasse),
    sublist(haus(_,_,eidechse),haus(_,chinese,_),Strasse),
    sublist(haus(blau,_,_),haus(_,_,eidechse),Strasse),
    in(haus(_,N,nilpferd), Strasse).
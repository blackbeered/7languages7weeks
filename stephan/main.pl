bahnhof(berlin). % Berlin hat ein Bahnhof
bahnhof(lübeck). % Lübeck hat ein Bahnhof

% Implikation: 
% Wenn X einen Bahnhof hat und Y einen Bahnhof hat, dann sind Bahnhof X und Bahnhof Y miteinander verbunden.
verbunden(X,Y) :- bahnhof(X), bahnhof(Y).

% Zugverbindungen
verbindung(A,A).
verbindung(A,Z) :- zug(A,T), verbindung(T,Z).
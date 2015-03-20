direktZug(saarbruecken,dudweiler).
direktZug(forbach,saarbruecken).
direktZug(freyming,forbach).
direktZug(stAvold,freyming).
direktZug(fahlquemont,stAvold).
direktZug(metz,fahlquemont).
direktZug(nancy,metz). 


reiseVonZu(X,X).
reiseVonZu(X,Y) :- direktZug(X,Z), reiseVonZu(Z,Y).
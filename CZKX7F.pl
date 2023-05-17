megold(P) :-
    gyerek(A, P), nev(A, botond),
	gyerek(B, P), nev(B, emese),
	gyerek(C, P), nev(C, karcsi),
	gyerek(D, P), nev(D, orsi),
    gyerek(E, P), nev(E, vanda),
	P = gyerekek(A, B, C, D, E),
    
    gyerek(F, P), kisallat(F, hörcsög),
	gyerek(G, P), kisallat(G, kakadu),
	gyerek(H, P), kisallat(H, kutya),
	gyerek(I, P), kisallat(I, macska),
    gyerek(J, P), kisallat(J, teknős),
    
    gyerek(K, P), ajandek(K, bicikli),
    gyerek(L, P), ajandek(L, korcsolya),
	gyerek(M, P), ajandek(M, piperaasztal),
	gyerek(N, P), ajandek(N, playstation),
    gyerek(O, P), ajandek(O, villanyvasut),
    
    gyerek(Q, P), evfolyam(Q, egy),
    gyerek(R, P), evfolyam(R, három),
	gyerek(S, P), evfolyam(S, öt),
	gyerek(T, P), evfolyam(T, hat),
    gyerek(U, P), evfolyam(U, nyolc),
    W= evfolyamok(Q,R,S,T,U),
    
    %A nyolcadikos lány piperaasztalt kapott
    U = M, U \= A, U \= C,
    %Orsinak nincs teknőse
    D \= J,
    %Akinek playstationje van, teknőst akart
    N =J,
    %A legkisebb, hörcsögöt szeretett volna
    Q = F,
    %Botond kutyát akart
    A = H,
    %Akié a bicikli, idősebb Emesénél
    fiatalabb(B,K,W),
    %Vanda öt évfolyammal idősebb Karcsinál
    otevfolyam(C,E,W),
    %Vanda sosem vágyott kakadura
    E \= G,
    %Vanda görkorcsolyát kapott
    E = L.


gyerek(X, gyerekek(X,_,_,_,_)).
gyerek(X, gyerekek(_,X,_,_,_)).
gyerek(X, gyerekek(_,_,X,_,_)).
gyerek(X, gyerekek(_,_,_,X,_)).
gyerek(X, gyerekek(_,_,_,_,X)).


fiatalabb(X,Y,evfolyamok(X,Y,_,_,_)).
fiatalabb(X,Y,evfolyamok(_,X,Y,_,_)).
fiatalabb(X,Y,evfolyamok(X,_,Y,_,_)).
fiatalabb(X,Y,evfolyamok(_,_,X,Y,_)).
fiatalabb(X,Y,evfolyamok(_,X,_,Y,_)).
fiatalabb(X,Y,evfolyamok(X,_,_,Y,_)).
fiatalabb(X,Y,evfolyamok(_,_,_,X,Y)).
fiatalabb(X,Y,evfolyamok(_,_,X,_,Y)).
fiatalabb(X,Y,evfolyamok(_,X,_,_,Y)).
fiatalabb(X,Y,evfolyamok(X,_,_,_,Y)).

otevfolyam(X,Y,evfolyamok(X,_,_,Y,_)).
otevfolyam(X,Y,evfolyamok(_,X,_,_,Y)).

nev(h(X,_,_,_),X).
kisallat(h(_,X,_,_),X).
ajandek(h(_,_,X,_),X).
evfolyam(h(_,_,_,X),X).

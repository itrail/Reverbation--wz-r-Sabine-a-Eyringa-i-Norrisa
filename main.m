w= 2;
l= 2.6;
h=2.3;
figure_cube(w,h,l)
V = w*l*h;
S = 2 *(w*l)+ 2* (w*h)+2*(h*l);
disp("Objętośc pomieszczenia wynosi: " + V + " m^3" ); 
disp("Powierzchnia pomieszczenia wynosi: " + S + " m^2" ); 
disp(" ")

AFSoR = srednia_droga_odbicia(V, S);
disp("Średnia droga swobodna odbicia w pomieszczeniu wynosi: " + AFSoR + " m" ); 

T = AFSoR * 1000/343.8;
disp("Średni okres między uderzaniami o kolejne powierzchnie wynosi: " + T + " ms" ); 

A = calkowita_chlonnosc_akustyczna(w,l,h);
disp("Całkowita chłonność akustyczna pomieszczenia wynosi: " + A + " sabinów" );

disp(" ")
RT = 0.161 * V/A;
disp("WZÓR SABINE'A");
disp("Czas pogłosu dla częstotliwości 500 Hz w tym pomieszczeniu wynosi: " + RT + " sekund" );
disp(" ")
disp("WZÓR EYRINGA I NORRISA");
RT_en = (0.161 * V)/(-S * log(1-A/S));
disp("Czas pogłosu dla częstotliwości 500 Hz w tym pomieszczeniu wynosi: " + RT_en + " sekund" );

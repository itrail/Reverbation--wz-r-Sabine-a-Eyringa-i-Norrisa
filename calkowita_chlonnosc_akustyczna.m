function A = calkowita_chlonnosc_akustyczna(w,l,h)
    sufit = l*w*0.05;
    sciany = 2 * (2.6*2*0.01) + 2*2.3*0.01 + ((2.3*2)-(2*0.8))*0.01;
    drzwi = 2*0.8*0.08;
    a_sr = (sufit + sciany + drzwi)/3;
    A = a_sr * 2 *(w*l)+ 2* (w*h)+2*(h*l);
end
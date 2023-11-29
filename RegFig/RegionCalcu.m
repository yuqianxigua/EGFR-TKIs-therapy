clear,clc
a=imread('fB00231.png'); % input fig
a=double(a);
R=a(:,:,1);
G=a(:,:,2);
B=a(:,:,3);
sz = size(a);
com=0;
erlo=0;
osi=0;
for i=1:sz(1)*sz(2)
    if R(i)==255 && G(i)==0 && B(i)==0
        com=com+1;
    elseif R(i)==255 && G(i)>=253 && B(i)==0
        erlo=erlo+1;
    elseif R(i)==0 && G(i)==0 && B(i)==255
        osi=osi+1
    end
end
Erlo = erlo/(com+erlo+osi)
Osi = osi/(com+erlo+osi)
Com = com/(com+erlo+osi) % output result

function f = cos_sqrt_n(x,alpha,beta,gamma,delta,q,w)

G = zeros(1,14);
power = 1/q;
N1 = 1; N2 = 1; N3 = 1; N4 = 1; N5 = 1;
N6 = 1; N7 = 1; N8 = 1; N9 = 1; N10 = 1; N11 = 1; N12 = 1; N13 = 1; N14 = 1;


G(1) = 1/((51/N1)^power*beta)*x(1)+1/((22/N1)^power*beta)*x(2)+1/((28.5/N1)^power*beta)*x(3)+...
    1/((6/N1)^power*beta)*x(4)+1/((10/N1)^power*beta)*x(5)+1/((1/N1)^power*beta)*x(6)+...
    1/((3/N1)^power*beta)*x(7)+1/((0.5/N1)^power*beta)*x(8)+1/((2/N1)^power*beta)*x(9)+...
    1/((1/N1)^power*alpha)*x(10)+1/((1/N1)^power*beta)*x(11)+1/((1/N1)^power*alpha)*x(12)+...
    1/((0.5/N1)^power*alpha)*x(13)+1/((1/N1)^power*alpha)*x(14)+1/((1/N1)^power*beta)*x(15);
G(2) = 1/((300/N2)^power*beta)*x(1)+1/((130/N2)^power*beta)*x(2)+1/((160/N2)^power*beta)*x(3)+...
    1/((30/N2)^power*beta)*x(4)+1/((60/N2)^power*beta)*x(5)+1/((10/N2)^power*beta)*x(11)+...
    (1/((60/N2)^power*beta+(30/N2)^power*gamma))*x(12)+1/((2/N2)^power*gamma)*x(14)+1/((2/N2)^power*beta)*x(15);
G(3) = 1/(beta)*x(14);
G(4) = 1/((58/N4)^power*beta)*x(1)+1/((24/N4)^power*beta)*x(2)+1/((35/N4)^power*beta)*x(3)+...
    1/((4/N4)^power*beta)*x(4)+1/((16/N4)^power*beta)*x(5)+(1/((1/N4)^power*beta))*x(16);
G(5) = (1/((2/N5)^power*beta+(2/N5)^power*gamma))*x(12);

G(6) = (1/((200/N6)^power*alpha+((400/N6)^power*beta)+((200/N6)^power*gamma)+...
    (200/N6)^power*delta))*x(12);
G(7) = (1/((5/N7)^power*alpha+((10/N7)^power*beta)+((5/N7)^power*gamma)+...
    (5/N7)^power*delta))*x(3);
G(8) = (1/((10/N8)^power*beta))*x(2)+(1/((10/N8)^power*beta))*x(3)+...
    (1/((5/N8)^power*alpha+((5/N8)^power*gamma)+(5/N8)^power*delta))*x(16);
G(9) = (1/((10/N9)^power*alpha+(20/N9)^power*beta+((10/N9)^power*gamma)+...
    (10/N9)^power*delta))*x(11);
G(10) = (1/((40/N10)^power*alpha+((80/N10)^power*beta)+((40/N10)^power*gamma)+...
    (40/N10)^power*delta))*x(6);
G(11) = (1/((7/N11)^power*alpha+((13/N11)^power*beta)+((7/N11)^power*gamma)+...
    (7/N11)^power*delta))*x(1);
G(12) = (1/((3/N12)^power*alpha+((6/N12)^power*beta)+((3/N12)^power*gamma)+...
    (3/N12)^power*delta))*x(2);
G(13) = (1/((5/N13)^power*alpha+((10/N13)^power*beta)+((5/N13)^power*gamma)+...
    (5/N13)^power*delta))*x(4);
G(14) = (1/((1/N14)^power*alpha+((1/N14)^power*beta)+((1/N14)^power*gamma)+...
    (1/N14)^power*delta))*x(5);


similarity = sum(G.*w)/sqrt(sum(G.^2)*sum(w.^2));
f = (1-similarity)^2;


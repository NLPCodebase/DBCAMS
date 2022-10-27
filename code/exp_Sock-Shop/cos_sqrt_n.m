function f = cos_sqrt_n(x,alpha,beta,gamma,delta,q,w)

G = zeros(1,4);

power = 1/q;
N1 = 6; N2 = 25; N3 = 4; N4 = 15;

G(1) = 1/((5)^power*beta)*x(3)+1/((1)^power*alpha)*x(4);
G(2) = 1/((4)^power*beta)*x(1)+1/((5)^power*alpha)*x(2)+...
    (1/((5)^power*beta)+1/((3)^power*gamma)+1/((8)^power*delta))*x(4);
G(3) = (1/((2)^power*beta)+1/((2)^power*gamma))*x(1);
G(4) = 1/(beta)*x(2);


similarity = sum(G.*w)/sqrt(sum(G.^2)*sum(w.^2));
f = (1-similarity)^2;


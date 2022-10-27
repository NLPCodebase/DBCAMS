function f = MMD( x,alpha,beta,gamma,delta,q,w )
%MMD 此处显示有关此函数的摘要
%   此处显示详细说明

G = zeros(1,4);
G_sum = 0;
power = 1/q;
N1 = 6; N2 = 25; N3 = 4; N4 = 15;

G(1) = 1/((5/N1)^power*beta)*x(3)+1/((1/N1)^power*alpha)*x(4);
G(2) = 1/((4/N2)^power*beta)*x(1)+1/((5/N2)^power*alpha)*x(2)+...
    (1/((5/N2)^power*beta+(3/N2)^power*gamma+(8/N2)^power*delta))*x(4);
G(3) = (1/((2/N3)^power*beta+(2/N3)^power*gamma))*x(1);
G(4) = 1/(beta)*x(2);

for i=1:4
    G_sum = G_sum + G(i);
end

w_size = 1;

G = G / G_sum;

K = rbf_dot(G,G,4);
L = rbf_dot(w,w,4);
KL = rbf_dot(G,w,4);
c_K = 1/(w_size^2);
c_L = 1/(w_size^2);
c_KL = 2/(w_size*w_size);

mmd = sum(sum(c_K.*K))+sum(sum(c_L.*L))-sum(sum(c_KL.*KL));

f = mmd;
end


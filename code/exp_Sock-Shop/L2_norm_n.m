function loss = L2_norm_n( x,alpha,beta,gamma,delta,q,w )
%L2_NORM 此处显示有关此函数的摘要
%   此处显示详细说明

G = zeros(1,4);
sum_G = 0;
power = 1/q;
N1 = 6; N2 = 25; N3 = 4; N4 = 15;
loss = 0;

G(1) = 1/((5)^power*beta)*x(3)+1/((1)^power*alpha)*x(4);
G(2) = 1/((4)^power*beta)*x(1)+1/((5)^power*alpha)*x(2)+...
    (1/((5)^power*beta)+1/((3)^power*gamma)+1/((8)^power*delta))*x(4);
G(3) = (1/((2)^power*beta)+1/((2)^power*gamma))*x(1);
G(4) = 1/(beta)*x(2);

for i=1:4
    sum_G = sum_G + G(i);
end


for i=1:4
    loss = loss + (w(i) - G(i))^2;
end

loss = loss^(1/2);
end


function H = rbf_dot( X,Y,deg )
%RBF_DOT �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

w_size = 1;
G = sum((X.*X),2);
H = sum((Y.*Y),2);
Q = repmat(G,1,w_size(1));

R = repmat(H',w_size(1),1);
H = Q + R - 2*X*Y';
H=exp(-H/2/deg^2);  %N_X*N_Y

end


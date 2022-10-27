clear all;clc;

w = xlsread('..\..\data\in_ahp-grade.xlsx','Sheet1','A2:N2');
alpha = 2; beta = 4; gamma = 3; delta = 1;
% alpha = 1; beta = 1; gamma = 1; delta = 1;


%% ���㹱�׶�
% ��ʼ�����׶�����
DS_num = 16;     % ����Դ����
BS_num = 14;     % ҵ�񳡾�����
DS_Contribution = zeros(1,DS_num);
loss = zeros(1,1);


LB = 0*ones(DS_num,1);
UB = 1*ones(DS_num,1);
Aeq = ones(1,DS_num);
beq = [1];
[x, fval] = ga(@(x) cos_sqrt_n(x,alpha,beta,gamma,delta,2,w),DS_num,[],[],Aeq,beq,...
    LB,UB);

DS_Contribution = x;
loss = L2_norm_n(x,alpha,beta,gamma,delta,2,w);



% We take the average value of ten runs.
disp(DS_Contribution);
disp(loss);


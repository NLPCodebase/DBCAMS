clear all;clc;

w = xlsread('..\..\data\in_ahp-grade.xlsx','Sheet1','A1:D1');
alpha = 2; beta = 4; gamma = 1; delta = 3;
% alpha = 1; beta = 1; gamma = 1; delta = 1;



%% ���㹱�׶�
% ��ʼ�����׶�����
DS_num = 4;     % ����Դ����
BS_num = 4;     % ҵ�񳡾�����
DS_Contribution = zeros(1,DS_num);
loss = 0;

LB = 0*ones(DS_num,1);
UB = 1*ones(DS_num,1);
Aeq = ones(1,DS_num);
beq = [1];
[x, fval] = ga(@(x) MMD(x,alpha,beta,gamma,delta,2,w),DS_num,[],[],Aeq,beq,...
    LB,UB);

DS_Contribution = x;
loss = L2_norm_n_division_N(x,alpha,beta,gamma,delta,2,w);


% We take the average value of ten runs.
disp(DS_Contribution);
disp(loss);


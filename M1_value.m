%%
%��*Ϊ�˽�����
%���ɾ���
    %ֱ�ӷ�(ͨ���ֺŽ��зָ��У����ŷָ���)
        a = [1,2,3;4,5,6;7,8,9];
    %ð��һά���� a = ��ʼ : ���� : ������(����Ϊ1��ʡ��)
        b = 1:1:10;% 1,2,3����10
        b = 1:10;%����һ���ȼ�
    %��������
        %linspace(��ʼ��������Ԫ�ظ��������Ȳ�����ָ��Ԫ������һά����ʡ�Ը���������100��
            c = linspace(0,10,5);
            %���� d = (ĩ�� - ����)/(���� n -1 )
        %�������
            e = eye(4); %eye(ά��)��λ��
            z = zeros(1,4); %zeros(������)�����
            o = ones(4,1); %ones(������)ȫ1��
            r = rand(4); %rand(ά��)0~1�ֲ��������
            rn = randn(4); %randn(ά��)0��ֵGaussian(��̬)�ֲ������
            %ά������дһ������ʾ��������ͬ
%%
% ��������
    diag_a = diag(a,1); %diag(����k)�����������ɾ������Խ����Ϸ���k��б��
    diag_b = diag(b,1); %diag(�����������Խ����Ϸ���k��б��)�����������ɶԽ���(���˸�б����ȫΪ0)
    
    tril_a = tril(a,1); %tril(�������Խ����Ϸ���k��б��)���ɾ������������(��б���Ϸ�ȫΪ0)��triu��������
    % �ӡ������ˡ��˷�
        a*a;%(��������)
    % ������
        % a.*b , a./b , a.\b , a.^b��Ӧ
        a.*a
        %/���ҳ���a/b��ʾ����a���Ծ���b����
        %\�������a\b��ʾ����a�������b��
        %./���ҳ���a./b��ʾ����a�е�ÿ��Ԫ�س��Ծ���b�Ķ�Ӧ��Ԫ�ء�
        %.\�������a.\b��ʾ����b�е�ÿ��Ԫ�س��Ծ���a�Ķ�Ӧ��Ԫ�ء�
        
    % �����
        pinv(a) %α����󣬵�a���Ƿ������������󣻵�a�ǿ��淽�󣬽�����������ͬ
    % ����ֵ����������
        [v,D] = eig(a); % ���vΪ����������DΪ����ֵ�Խ���
    % *����ʽ
        det(a)
    % *��
        rank(a)
    % *����
        compan(b)

%%
% ������޸�
    % �����滻
        chg_a = a;%(��������)
        chg_a(2,3) = 4;%(�У���)Ԫ���滻
        chg_a(1,:) = [2,2,2];%(��,:)�滻��
        chg_a(:,1) = [2,2,2];%(:,��)�滻�У�[]��ɾ������
    % ת��
        T_a = a';
    % ָ��ά��ƴ��
        c1_a = cat(1,a,a);%��ֱƴ��
        c2_a = cat(2,a,a);%ˮƽƴ��
    % *��ά
        rs_a = reshape(a,1,9);%Ԫ�ظ������䣬�����Ϊm*n

%%
% ��Ϣ��ȡ
    % ����������
        [row_a,col_a] = size(a); %[����,����]
    % ����������
        len_a = length(a);

%%
% ��ά����
    % ����
        % ֱ�ӷ�
            mul_1(:,:,1) = [1,2,3;2,3,4];
            mul_1(:,:,2) = [3,4,5;4,5,6];
        % ��չ��
            mul_2 = [1,2,3;2,3,4];
            mul_2(:,:,2) = [3,4,5;4,5,6];%������ֵ��һҳ�����һҳȫΪ0
        % cat��
            mul_31 = [1,2,3;2,3,4];
            mul_32 = [3,4,5;4,5,6];
            mul_3 = cat(3,mul_31,mul_32);%��a1a2��"3"ά����
            
%%
% *�ַ���
    str0 = 'hello world';%(��˫����)

%%
%ת��
    % ___2___ --> ��num2str��������ת�ַ���;dec2hex,��ʮ����ת��Ϊʮ������
    str_b = num2str(b);
    % abs,doubleȡASCII�룻char��ASCII��ת�ַ���
    abs_str = abs('aAaA');
    
            
%%
a = 5;
x = [1.2];y = [3,4];

%%
%选择结构
    %if-elseif-else-end
        % 判断语句不需要小括号包括
        % 判断块不需要大括号包括
        % elseif之间不需要空格
        % 需要用end作结尾
        if a>0
            disp(x);
        elseif a==0
            disp(a);
        else
            disp(a-1);
        end
        %disp函数是显示，类似printf
        
        %switch-case-otherwise-end
        switch a
            case 0
                disp(a);
            case 1
                disp(a+1);
            otherwise
                disp('aaa');
        end
        
        %try-catch
        try
            z = x*y;
        catch
            z = x.*y;  % 若try出错，则执行
        end
        disp(z);
        
%%
% 循环结构
    % 需要用end结尾
    % for 循环变量=初值:步长:终值 - end  for后给一个向量，让向量从第一个值走到最后一个值终止循环
    for i=0:1:10  % 等效于for(i=0;i<10;i++) 若步长为负，则初值大于终值  
        disp(i);  % 循环体内不可对循环变量做修改
    end
    
    % while-end
    while a>2
        disp(a);
        a = a-1;
    end

%%
%程序控制
    %continue 跳过当次循环剩下语句，进入下一循环
    %break 跳出当前循环
    %return 跳出程序并返回
    
%%
%m文件
    %脚本文件：没有输入输出参数，执行后变量结果返回工作空间，可直接运行
        %以下是脚本文件，文件名假设为exxp.m
        %**********************************************
            clear
            r = 5;
            s = pi*r*r;
            p = 2*pi*r;
            disp(s)
            disp(p)
        %**********************************************
        %以下是调用
        %**********************************************
            exp
        %**********************************************
        %函数文件：以function开头，有输入输出，变量为局部变量不返回工作空间，需要调用
        %以下是函数文件
        %**********************************************
            function [s, p] = circ(r)  % 文件命名应与函数名一致，系统找文件名circ.m
            %CIRC 计算圆面积和周长  % 简单说明
            %参数：输入参数r:圆半径；输出参数s:圆面积，p:周长  % 详细说明
                s = pi*r*r;
                p = 2*pi*r;
            end
        %**********************************************
        %以下是调用
        %**********************************************
            [a, b] = circ(5);  % 返回为多个参数时，若写a = circ(5)则保留第一个返回值
         %**********************************************
        %*以下是带子函数的函数文件
        %**********************************************
        function y = key(w)  % 主函数放第一个，函数名为key
            if w==0
                y = type0(w);  % 调用子函数type0
            else
                y = type1(w);
            end
        end
        function y0 = type0(a)  % 子函数，各子函数之间顺序无所谓
            y0 = a+1;
        end
        function y1 = type1(a)
            y1 = a+4;
        end
        %**********************************************
         %*函数输入输出参数可以不定
        %nargin：输入参数个数，nargout：输出参数个数
        %varargin：输入参数内容的元胞数组，varargout：输出参数
        %以下是函数文件
        %**********************************************
        function varargout = idk(varargin)
            x = length(varargin);
            varargout{1} = x;
            varargout{2} = x+1;
        end
        %**********************************************  
         %*函数输入输出参数可以不定
        %nargin：输入参数个数，nargout：输出参数个数
        %varargin：输入参数内容的元胞数组，varargout：输出参数
        %以下是函数文件
        %**********************************************
        function varargout = idk(varargin)
            x = length(varargin);
            varargout{1} = x;
            varargout{2} = x+1;
        end
        %**********************************************  
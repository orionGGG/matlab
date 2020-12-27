function [s, p] = circ(r)  % 文件命名应与函数名一致，系统找文件名circ.m
%CIRC 计算圆面积和周长  % 简单说明
%参数：输入参数r:圆半径；输出参数s:圆面积，p:周长  % 详细说明
    s = pi*r*r;
    p = 2*pi*r;
end
data = csvread('data.csv', 1, 0);
hold on

x0 = data(:, 1);
y0 = data(:, 2);
r = abs(y0 ./ 3) +4;
x = 0:0.01:3;

func = @(a, x)a(1) * sin(a(2) * (x + a(3))) + a(4);
p = lsqcurvefit(func, [-30, 5, 0, 0], x0, y0)
y = func(p, x);

scatter(x0, y0, r, 'o', 'filled', 'MarkerFaceColor', 'r')%����ɢ��ͼ
plot(x, y, '-', ...% ʵ����
'Color', 'b', ...% ��ɫ
'LineWidth', 1)% �߿�

xlabel('T(S)')
ylabel('X(mm)')
legend('ʵ����', '�������')
title('Ħ������ʵ�������������')

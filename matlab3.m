data = readmatrix('data.csv');

x0 = data(:, 1);
y0 = data(:, 2);
x = 0:0.01:3;

func = @(a, b, c, d, x)a .* sin(b .* (x + c)) + d;
ft = fittype(func);
fp = fit(x0, y0, ft);
y = fp(x);

plot(x, y, '-', ...% ʵ����
'Color', [0.93 0.49 0.19], ...% ��ɫ
'LineWidth', 1)% �߿�

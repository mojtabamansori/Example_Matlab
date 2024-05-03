filename = '1.csv';
data = readtable(filename);

column1 = table2array(data(:,2)); 
column2 = table2array(data(:,4)); 

figure;
stem(column1, column2);
title('نمونه‌های تصادفی از سیگنال سینوسی');
xlabel('نمونه');
ylabel('مقدار');

X_sampled = fft(column2);

figure;
stem(column1,abs(X_sampled));
title('افاف تی نمونه‌های تصادفی از سیگنال سینوسی');
xlabel('فرکانس');
ylabel('مقدار افاف تی');

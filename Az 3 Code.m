clc;
clear;
n = input('Enter number of data points: ');
V = zeros(1,n);
T = zeros(1,n);
for i = 1:n
    V(i) = input(['Volume at point ' num2str(i) ' (mL): ']);
    T(i) = input(['Temperature at point ' num2str(i) ' (°C): ']);
end

figure;
plot(V,T,'-o','LineWidth',1.5);
xlabel('Distilled Volume (mL)');
ylabel('Measured Temperature (°C)');
title('Temperature vs Volume - Simple Distillation of Water');
grid on;
disp('----------------------');
disp('Entered Data:');
disp(table(V',T','VariableNames',{'Volume_mL','Temp_C'}));

[maxT, idxMax] = max(T);
fprintf('\nMaximum temperature: %.2f °C at %.2f mL of distillate\n', maxT, V(idxMax));

L=100;  
t=(0:2/L:2);

f1=cos(1*pi*t);
subplot(6, 4, [1 6], 'align');
plot(t, f1);
legend('z1');

f2=(1/9)*cos(3*pi*t);
s1 = f1 + f2;
subplot(6, 4, [3 8], 'align');
plot(t, f2, t, f1, t, s1);
legend('z1', 'z2', 'z1+z2');

f3=(1/25)*cos(5*pi*t);
s2 = f1 + f2 + f3;
subplot(6, 4, [9 14], 'align');
plot(t, f3, t, f2, t, f1,  t, s2);
legend('z1', 'z2', 'z3', 'z1+z2+z3');

s3=zeros(1,numel(t));

    for  n = 1:1:10 
      s3=s3+ ((1/(2*n-1)).^2)*cos((2*n-1)*pi*t); 
    end
    
subplot(6, 4, [11 16], 'align');
plot(t, s3);
legend('sum of 10 items');

s4=zeros(1,numel(t));

    for  n = 1:1:25 
      s4 = s4+ ((1/(2*n-1)).^2)*cos((2*n-1)*pi*t); 
    end
    
subplot(6, 4, [17 22], 'align');
plot(t, s4);
legend('sum of 25 items');

s5=zeros(1,numel(t));

    for  n = 1:1:50 
      s5=s5+ ((1/(2*n-1)).^2)*cos((2*n-1)*pi*t); 
    end
    
subplot(6, 4, [19 24], 'align');
plot(t, s5);
legend('sum of 50 items');
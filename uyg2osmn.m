%% 1.soru a sýkký%%


fs = 100000; %%100kHz 
t = 0:1/fs:1.5;
x1 = sawtooth(2*pi*100*t);
subplot(2,1,1)
plot(t,x1)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')

%%1.soru b sýkký

clc
clear all
close all

fs = 1000000;  %%1MkHz
t = 0:1/fs:1.5;
x2 = square(2*pi*20*t);
subplot(2,1,1)
plot(t,x2)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Square Periodic Wave')




%% 1.soru c sýkký


clc
clear all
close all


fs = 100000;
t = -1:1/fs:1;
x1 = tripuls(t,100e-3);
subplot(2,1,1)
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')



%%1.Soru d sýkký

clc 
clear all
close all
fs = 100000;
t = -1:1/fs:1;
x2 = rectpuls(t,20e-3);
subplot(2,1,1)
plot(t,x2)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')

%%1.soru e sýkký
clc 
clear all
close all

tc = gauspuls('cutoff',50e3,0.5,[],-60); 
t1 = -tc : 1e-6 : tc; 
y1 = gauspuls(t1,50e3,0.6);
subplot(2,1,1)
plot(t1*1e3,y1)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse')


%%1.soru f sýkký

clc 
clear all
close all
fs = 200E9;                    % sample freq
D = [2.5 10 17.5]' * 1e-9;     % pulse delay times
t = 0 : 1/fs : 2500/fs;        % signal evaluation time
w = 2e-9;                      
yp = pulstran(t,D,@rectpuls,w);
subplot(2,1,1)
plot(t*1e9,yp);
axis([0 25 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')


%%2.soru

%unit responce
clc
clear all
close all
n=-30:1:29
y=[zeros(1,30),ones(1,30)]
stem(n,y)


%%unit impulse
clc 
clear all
close all
m=-30:1:29
y1=[zeros(1,30),ones(1,1),zeros(1,29)]
stem(m,y1)
%%unit ramp
clc 
clear all
close all
t = (-1:0.01:1)';

impulse = t==0;
unitstep = t>=0;
ramp = t.*unitstep;
quad = t.^2.*unitstep;
plot(t,[impulse unitstep ramp quad])

%%3.soru

clc
clear all
close all
fs=100
f1=20
t=0:1/fs:1
y1=cos(2*pi*f1*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
y2=sin(2*pi*f1*t)
subplot(2,1,2)
plot(t,y2,'LineWidth',2)
grid on

n=-100:1:100
y=sin(2*pi*n/36)
stem(n,y)
x=cos(2*pi*n/36)
stem(n,y)

%%4.soru
clc
clear all
close all
t=-5:0.1:6;
g_even=(g(t)+g(-t))/2
g_odd=(g(t)-g(-t))/2
plot(t,g_even)
plot(t,g_odd)



%%5.soru
clc
clear all
close all
n=-100:100
y=(3.^abs(n)).*cos(2*pi*n/4)
sum(abs(y.^2))


%%6.soru
%%sin grafikleri
clc
clear all
close all
fs1=5000 
f=1000 
t=0:1/fs1:5
y1=sin(2*pi*f*t)
x1=cos(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
fs2=2000
t1=0:1/10:5
y2=sin(2*pi*f*t1)
subplot(2,1,2)
stem(t1,y2)

%%cos grafikleri


clc
clear all
close all
fs1=5000 
ff=1000 
t3=0:1/fs1:5
y3=cos(2*pi*ff*t3)
subplot(2,1,1)
plot(t3,y3,'LineWidth',2)
fs2=2000
t4=0:1/10:5
y4=cos(2*pi*ff*t4)
subplot(2,1,2)
stem(t4,y4)


%%7.soru
clc
clear all
close all
n = 0:127;
x = 4+cos(2*pi*n/24);
x0 = downsample(x,2,0);
x1 = downsample(x,2,1);
y0 = upsample(x0,2,0);
y1 = upsample(x1,2,1);
subplot(3,1,1)
stem(x,'Marker','none')
ylim([0.5 3.5])
title('Original Signal')

subplot(3,1,2)
stem(y0,'Marker','none')
ylim([0.5 2.5])
ylabel('Phase 0')

subplot(3,1,3)
stem(y1,'Marker','none')
ylim([0.5 10.5])
ylabel('Phase 1')











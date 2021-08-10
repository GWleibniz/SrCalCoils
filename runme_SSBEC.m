configuration='SSBEC'; 

xgrid=0;
ygrid=-0.3:0.002:0.5;
zgrid = -0.02;

[coils,Boffset] = getCoils (configuration);
[Bx,By,Bz,Bt] = getMagneticfield(xgrid,ygrid,zgrid,coils,Boffset);
figure
plotcoils (coils)

Btxy = (Bx.^2 + By.^2).^0.5
figure
hold on
plot(ygrid*100,Bx)
plot(ygrid*100,By)
plot(ygrid*100,Bz)
plot(ygrid*100,Bt)
legendvector  = {'Bx','By','Bz','Bt'}
legend(legendvector)

p = polyfit ( ygrid,Btxy',30)

plot(ygrid*100,polyval(p,ygrid))


% 
% v = 4;
% dB =  diff(Bt);
% dy = diff(ygrid');
% dbdy= dB./dy;
% dBdt = dbdy*v;
% figure
% hold on
% plot(ygrid(1:end-1)*1000,dBdt)
% plot(ygrid*1000,Bt)
% hold off
% figure
% gamma = 184;
% FieldChangeRate = abs(dBdt)./Bt(1:end-1);
% LarmorFreq = abs(Btxy(1:end-1))*gamma;
% Condition = FieldChangeRate./LarmorFreq;
% plot(ygrid(1:end-1)*1000,Condition);


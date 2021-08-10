configuration='CAPTURE87MOTfieldOFF'; 


%Get vertical y gradient

xgrid=0;
ygrid=-0.3:0.002:0.5;
zgrid = -0.02;

[coils,Boffset] = getCoils (configuration);
[Bx,By,Bz,Bt] = getMagneticfield(xgrid,ygrid,zgrid,coils,Boffset);


[val,indx]  = min(abs(Bt));
indexVector = indx-10:indx+10;

[dBydy,~] = polyfit(ygrid(indexVector),By(indexVector)',1);
printValy = ['The vertical gradient,  By/d] = ',num2str(dBydy(1)),'\n'];



%Get horizontal x gradient
xgrid=-0.3:0.002:0.3;
ygrid=-0;
zgrid = -0.02;

[coils,Boffset] = getCoils (configuration);
[Bx,By,Bz,Bt] = getMagneticfield(xgrid,ygrid,zgrid,coils,Boffset);


[val,indx]  = min(abs(Bt));
indexVector = indx-10:indx+10;
[dBxdx,~] = polyfit(xgrid(indexVector),Bx(indexVector),1);
printValx = ['The horizontal x gradient,  dBx/dx is] = ',num2str(dBxdx(1)),'\n'];


%Get horizontal z gradient
xgrid=-0;
ygrid=-0;
zgrid =-0.3:0.002:0.5;

[coils,Boffset] = getCoils (configuration);
[Bx,By,Bz,Bt] = getMagneticfield(xgrid,ygrid,zgrid,coils,Boffset);


[val,indx]  = min(abs(Bt));
indexVector = indx-10:indx+10;
[dBzdz,~] = polyfit(zgrid(indexVector),Bz(indexVector)',1);
printValz = ['The horizontal z gradient,  dBz/dz is] = ',num2str(dBzdz(1)),'\n'];

fprintf(printValx)
fprintf(printValy)
fprintf(printValz)


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


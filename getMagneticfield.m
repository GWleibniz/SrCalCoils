function [Bx,By,Bz,Bt ] = getMagneticfield(xgrid,ygrid,zgrid,coils,Boffset)

% light.power(2:end)=0;



    
fignum=0;

srcalcoils

mu0=4*pi*1e-7;

[X,Y,Z]=meshgrid(xgrid,ygrid,zgrid);
X=squeeze(X);
Y=squeeze(Y);
Z=squeeze(Z);
Bz=Boffset.Bz*ones(size(X))*1e-4; By=Boffset.By*ones(size(X))*1e-4; Bx=Boffset.Bx*ones(size(X))*1e-4;

full.xpos=[]; full.ypos=[]; full.zpos=[]; full.xdir=[]; full.ydir=[]; full.zdir=[]; full.totallength=0;
for ind3=1:16
    full=catwirecurve(full,1,coils.wire{ind3},coils.current(ind3)*coils.turns(ind3));
end

xlabel('X');
ylabel('Y');
zlabel('Z');
title('Coil Currents');

for ind=1:length(full.xpos)
    range3=((X-full.xpos(ind)).^2+(Y-full.ypos(ind)).^2+(Z-full.zpos(ind)).^2).^(3/2);
    Bz=Bz+mu0/4/pi*(full.xdir(ind)*(Y-full.ypos(ind))-full.ydir(ind)*(X-full.xpos(ind)))./range3;
    Bx=Bx+mu0/4/pi*(full.ydir(ind)*(Z-full.zpos(ind))-full.zdir(ind)*(Y-full.ypos(ind)))./range3;
    By=By+mu0/4/pi*(full.zdir(ind)*(X-full.xpos(ind))-full.xdir(ind)*(Z-full.zpos(ind)))./range3;
end

Bx=Bx*1e4;
By=By*1e4;
Bz=Bz*1e4;
Bt = (Bx.^2 + By.^2 + Bz.^2).^0.5;

end


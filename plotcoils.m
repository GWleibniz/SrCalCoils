function plotcoils (coils)

full.xpos=[]; full.ypos=[]; full.zpos=[]; full.xdir=[]; full.ydir=[]; full.zdir=[]; full.totallength=0;
for ind3=1:16
    full=catwirecurve(full,1,coils.wire{ind3},coils.current(ind3)*coils.turns(ind3));
end

quiver3(full.xpos,full.ypos,full.zpos,full.xdir,full.ydir,full.zdir,'k');
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Coil Currents');
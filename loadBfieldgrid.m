function loadBfieldgrid(inputcoils,fielddirectory)

global Btable
global coils


try
    if strcmp(Btable.name,inputcoils.fieldname)
        return
    end
end
try
    load([fielddirectory,inputcoils.fieldname,'.mat'])
catch
    constructBfieldgrid(inputcoils,fielddirectory)
    load([fielddirectory,inputcoils.fieldname,'.mat'])
end

figure(1);
quiver3(full.xpos,full.ypos,full.zpos,full.xdir,full.ydir,full.zdir,'k');
xlabel('X');
ylabel('Y');
zlabel('Z');
title(['Coil Currents: ',inputcoils.fieldname]);

return


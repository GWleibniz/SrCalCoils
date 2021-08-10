function [fieldname]=createfieldname(coils)

coilnames={'BVH','BVAH','CWH','CWAH','COH','COAH','AZH','AZAH','AVH','AVAH','AOH','AOAH','RVH','RVAH','RHH','RHAH'};
inuse=find(coils.current~=0);

if isempty(inuse)
    fieldname='Off';
else
    fieldname='';
    for ind=inuse
        fieldname=[fieldname,'_',coilnames{ind},num2str(coils.current(ind))]; %#ok<AGROW>
    end
    fieldname=fieldname(2:end);
end



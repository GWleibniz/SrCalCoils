function [data]=convertcoordinates(coordinatesystem,datain)

switch coordinatesystem
    case 1
        data=datain/1000;
    case 2
        datain=datain/1000;
        data(2)=datain(1)+386.57e-3;
        data(1)=(datain(2)+datain(3))/2^0.5;
        data(3)=(datain(2)-datain(3))/2^0.5;
end

end

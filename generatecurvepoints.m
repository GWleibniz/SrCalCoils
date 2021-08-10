function [curvein]=generatecurvepoints(curvein,dltarget,coildata,A,B,coilnames)

% 1: Stright Line
% [startx,starty,startz,endx,endy,endz]
%
% 2: Arc
% [startx,starty,startz,middlex,middley,middlez,endx,endy,endz]
%

if isempty(curvein)
    curvein.xpos=[];
    curvein.ypos=[];
    curvein.zpos=[];
    curvein.xdir=[];
    curvein.ydir=[];
    curvein.zdir=[];
    curvein.totallength=0;
end

data=coildata{A,B};
coordinatesystem=data{1}{1};

for ind=2:length(data)
    switch data{ind}{1}(1)
        case 1, % straight line
            startpoint=convertcoordinates(coordinatesystem,data{ind}{1}(2:4));
            endpoint=convertcoordinates(coordinatesystem,data{ind}{1}(5:7));
            V=endpoint-startpoint;
            len=norm(V);
            num=ceil(len/dltarget);
            dl=V/num;

            xpos=startpoint(1)+dl(1)*(0.5:1:num)';
            ypos=startpoint(2)+dl(2)*(0.5:1:num)';
            zpos=startpoint(3)+dl(3)*(0.5:1:num)';

            xdir=0*xpos+dl(1);
            ydir=0*ypos+dl(2);
            zdir=0*zpos+dl(3);
        case 2, % arc
%             R=dot(startpoint-centrepoint,startpoint-centrepoint).^0.5;
            P1=convertcoordinates(coordinatesystem,data{ind}{1}(2:4));
            P2=convertcoordinates(coordinatesystem,data{ind}{1}(5:7));
            P3=convertcoordinates(coordinatesystem,data{ind}{1}(8:10));

            O = (P2 + P3)/2;
            C = (P1 + P3)/2;
            X = (P1 - P2)/2;

            N = cross(P3 - P1,P2 - P1);
            Nhat=N/norm(N);
            D = cross(N,P2 - O); D=D/norm(D);
            V = (P1 - C); V=V/norm(V);

            check = dot(D,V);
            Angle = pi;
            exist = false;

            if (check~=0)
                t = dot(X,V)/check;
                Center = O + D*t;
                Radius = norm(Center - P1);
                temp1 = (P1 - Center)/norm(P1-Center);

                FDirP1 = temp1;
                temp2 = (P3 - Center)/norm(P3 - Center);
                Angle = real(acos(dot(temp1,temp2)));

                if (Angle~=0)
                    exist = true;
                    temp3 = P2-P1;
                    temp4 = P2-P3;
                    if (dot(temp3,temp4)>0)
                        Angle = 2*pi - Angle;
                    end
                end
            end

            FDirP2 = cross(-N,P1 - Center); FDirP2=FDirP2/norm(FDirP2);

            len=Angle*Radius;
            num=ceil(len/dltarget);

            x = (0.5:1:num)'/num*Angle;
            dr=1/num*len;
            Pout=ones(size(x))*Center+Radius*cos(x)*FDirP1+Radius*sin(x)*FDirP2;

            xpos=Center(1)+Radius*cos(x)*FDirP1(1)+Radius*sin(x)*FDirP2(1);
            ypos=Center(2)+Radius*cos(x)*FDirP1(2)+Radius*sin(x)*FDirP2(2);
            zpos=Center(3)+Radius*cos(x)*FDirP1(3)+Radius*sin(x)*FDirP2(3);

            Pdir=cross([Pout(:,1)-Center(1),Pout(:,2)-Center(2),Pout(:,3)-Center(3)],repmat(Nhat,size(x)),2)/Radius*dr;

            xdir=Pdir(:,1);
            ydir=Pdir(:,2);
            zdir=Pdir(:,3);

    end

    curvein.xpos=[curvein.xpos;xpos];
    curvein.ypos=[curvein.ypos;ypos];
    curvein.zpos=[curvein.zpos;zpos];
    curvein.xdir=[curvein.xdir;xdir];
    curvein.ydir=[curvein.ydir;ydir];
    curvein.zdir=[curvein.zdir;zdir];
    curvein.totallength=curvein.totallength+len;
end

% quiver3(curvein.xpos,curvein.ypos,curvein.zpos,curvein.xdir,curvein.ydir,curvein.zdir,'k');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title(coilnames{A,B});


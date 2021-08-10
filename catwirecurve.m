function [output]=catwirecurve(curve1,dir1,curve2,dir2)

output.xpos=[curve1.xpos;curve2.xpos];
output.ypos=[curve1.ypos;curve2.ypos];
output.zpos=[curve1.zpos;curve2.zpos];
output.xdir=[curve1.xdir*dir1;curve2.xdir*dir2];
output.ydir=[curve1.ydir*dir1;curve2.ydir*dir2];
output.zdir=[curve1.zdir*dir1;curve2.zdir*dir2];
output.totallength=curve1.totallength+curve2.totallength;

return


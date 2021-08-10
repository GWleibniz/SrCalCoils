[wirecurve,coilnames]=loadcoildata;

% coilnames{1,1}={'Blue MOT Vertical','Low'};
% coilnames{1,2}={'Blue MOT Vertical','High'};

coils.name{1}='BMVH';
coils.turns(1)=7;
coils.wire{1}=catwirecurve(wirecurve(1,1),1,wirecurve(1,2),1);

coils.name{2}='BMVAH';
coils.turns(2)=30;
coils.wire{2}=catwirecurve(wirecurve(1,1),1,wirecurve(1,2),-1);

% coilnames{7,1}={'Blue MOT Tall','Left'};
% coilnames{7,2}={'Blue MOT Tall','Right'};

coils.name{3}='CCTWH';
coils.turns(3)=21;
coils.wire{3}=catwirecurve(wirecurve(7,1),-1,wirecurve(7,2),-1);

coils.name{4}='CCTWAH';
coils.turns(4)=14;
coils.wire{4}=catwirecurve(wirecurve(7,1),-1,wirecurve(7,2),1);

% coilnames{8,1}={'Blue MOT Short','Left'};
% coilnames{8,2}={'Blue MOT Short','Right'};

coils.name{5}='CCSOH';
coils.turns(5)=21;
coils.wire{5}=catwirecurve(wirecurve(8,1),1,wirecurve(8,2),-1);

coils.name{6}='CCSOAH';
coils.turns(6)=14;
coils.wire{6}=catwirecurve(wirecurve(8,1),1,wirecurve(8,2),1);

% coilnames{4,1}={'AL Z','Start'};
% coilnames{4,2}={'AL Z','End'};

coils.name{7}='ALZH';
coils.turns(7)=12;
coils.wire{7}=catwirecurve(wirecurve(4,1),-1,wirecurve(4,2),-1);

coils.name{8}='ALZAH';
coils.turns(8)=40;
coils.wire{8}=catwirecurve(wirecurve(4,1),1,wirecurve(4,2),-1);

% coilnames{2,1}={'AL Vertical','Low'};
% coilnames{2,2}={'AL Vertical','High'};

coils.name{9}='ALVH';
coils.turns(9)=15;
coils.wire{9}=catwirecurve(wirecurve(2,1),1,wirecurve(2,2),1);

coils.name{10}='ALVAH';
coils.turns(10)=49;
coils.wire{10}=catwirecurve(wirecurve(2,1),1,wirecurve(2,2),-1);

% coilnames{3,1}={'AL Horizontal','Left'};
% coilnames{3,2}={'AL Horizontal','Right'};

coils.name{11}='ALOH';
coils.turns(11)=8;
coils.wire{11}=catwirecurve(wirecurve(3,1),-1,wirecurve(3,2),-1);

coils.name{12}='ALOAH';
coils.turns(12)=16;
coils.wire{12}=catwirecurve(wirecurve(3,1),1,wirecurve(3,2),-1);

% coilnames{5,1}={'AL Racetrack Vertical','High'};
% coilnames{5,2}={'AL Racetrack Vertical','Low'};

coils.name{13}='RTVH';
coils.turns(13)=10;
coils.wire{13}=catwirecurve(wirecurve(5,1),-1,wirecurve(5,2),-1);

coils.name{14}='RTVAH';
coils.turns(14)=49;
coils.wire{14}=catwirecurve(wirecurve(5,1),1,wirecurve(5,2),-1);

% coilnames{6,1}={'AL Racetrack Horizontal','Left'};
% coilnames{6,2}={'AL Racetrack Horizontal','Right'};

coils.name{15}='RTHH';
coils.turns(15)=10;
coils.wire{15}=catwirecurve(wirecurve(6,1),1,wirecurve(6,2),1);

coils.name{16}='RTHAH';
coils.turns(16)=49;
coils.wire{16}=catwirecurve(wirecurve(6,1),-1,wirecurve(6,2),1);



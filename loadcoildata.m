function [wirecurves,coilnames]=loadcoildata

dltarget=1e-2;

% construct coils dataset

coilnames{1,1}={'Blue MOT Vertical','Low'};
coildata{1,1}={{2},{[2	-79	-95.99	127.38	-79	127.38	95.99	-79	95.99	-127.38]},...
{[2	-79	95.99	-127.38	-79	-127.38	-95.99	-79	-95.99	127.38]}};

coilnames{1,2}={'Blue MOT Vertical','High'};
coildata{1,2}={{2},{[2	77.5	-95.99	127.38	77.5	127.38	95.99	77.5	95.99	-127.38]},...
{[2	77.5	95.99	-127.38	77.5	-127.38	-95.99	77.5	-95.99	127.38]}};

coilnames{2,1}={'AL Vertical','Low'};
coildata{2,1}={{1},{[2	89.01	116.59	298.56	-244.56	116.59	143.01	-89.01	116.59	-190.56]},...
{[2	-89.01	116.59	-190.56	244.56	116.59	-35.01	89.01	116.59	298.56]}};

coilnames{2,2}={'AL Vertical','High'};
coildata{2,2}={{1},{[2	89.01	-149.70	298.56	-244.56	-149.70	143.01	-89.01	-149.70	-190.56]},...
{[2	-89.01	-149.70	-190.56	244.56	-149.70	-35.01	89.01	-149.70	298.56]}};

coilnames{3,1}={'AL Horizontal','Left'};
coildata{3,1}={{1},{[2	93.5	-13	-129.5	93.5	-182.5	40	93.5	-13	209.5]},...
{[2	93.5	-13	209.5	93.5	156.5	40	93.5	-13	-129.5]}};

coilnames{3,2}={'AL Horizontal','Right'};
coildata{3,2}={{1},{[2	-93.5	156.5	40	-93.5	-13	-129.5	-93.5	-182.5	40]},...
{[2	-93.5	-182.5	40	-93.5	-13	209.5	-93.5	156.5	40]}};

coilnames{4,1}={'AL Z','Start'};
coildata{4,1}={{1},{[2	0	176.5	-68.5	-194.5	-18	-68.5	0	-212.5	-68.5]},...
{[2	0	-212.5	-68.5	194.5	-18	-68.5	0	176.5	-68.5]}};

coilnames{4,2}={'AL Z','End'};
coildata{4,2}={{1},{[2	194.5	-18	132.5	0	176.5	132.5	-194.5	-18	132.5]},...
{[2	-194.5	-18	132.5	0	-212.5	132.5	194.5	-18	132.5]}};

coilnames{5,1}={'AL Racetrack Vertical','High'};
coildata{5,1}={{1},{[2	-112	102	-267	0	102	-379	112	102	-267]},...
{[1	112	102	-267	112	102	237]},...
{[2	112	102	237	0	102	349	-112	102	237]},...
{[1	-112	102	237	-112	102	-267]}};

coilnames{5,2}={'AL Racetrack Vertical','Low'};
coildata{5,2}={{1},{[2	-112	-104	-267	0	-104	-379	112	-104	-267]},...
{[1	112	-104	-267	112	-104	237]},...
{[2	112	-104	237	0	-104	349	-112	-104	237]},...
{[1	-112	-104	237	-112	-104	-267]}};

coilnames{6,1}={'AL Racetrack Horizontal','Left'};
coildata{6,1}={{1},{[2	-123.5	-104.5	-267	-123.5	0	-371.5	-123.5	104.5	-267]},...
{[1	-123.5	104.5	-267	-123.5	104.5	237]},...
{[2	-123.5	104.5	237	-123.5	0	341.5	-123.5	-104.5	237]},...
{[1	-123.5	-104.5	237	-123.5	-104.5	-267]}};

coilnames{6,2}={'AL Racetrack Horizontal','Right'};
coildata{6,2}={{1},{[2	123.5	-104.5	-267	123.5	0	-371.5	123.5	104.5	-267]},...
{[1	123.5	104.5	-267	123.5	104.5	237]},...
{[2	123.5	104.5	237	123.5	0	341.5	123.5	-104.5	237]},...
{[1	123.5	-104.5	237	123.5	-104.5	-267]}};

coilnames{7,1}={'Blue MOT Tall','Left'};
coildata{7,1}={{2},{[1	-153.6	9.9	69.3	-153.6	10.35	69.75]},...
{[2	-153.6	10.35	69.75	-150.82	16.83	76.23	-143.41	21.11	80.51]},...
{[1	-143.41	21.11	80.51	-6.5	61.25	120.65]},...
{[2	-6.5	61.25	120.65	0	62.16	121.55	6.39	61.19	120.59]},...
{[1	6.39	61.19	120.59	113.37	28.3	87.69]},...
{[2	113.37	28.3	87.69	120.59	24	83.39	123.29	17.6	77]},...
{[1	123.29	17.6	77	123.29	16.97	76.37]},...
{[2	123.29	16.97	76.37	123.29	4.85	67.6	123.29	-9.41	63.07]},...
{[2	123.29	-9.41	63.07	123.29	-45.09	45.09	123.29	-63.07	9.41]},...
{[2	123.29	-63.07	9.41	123.29	-67.6	-4.85	123.29	-76.37	-16.97]},...
{[1	123.29	-76.37	-16.97	123.29	-77	-17.6]},...
{[2	123.29	-77	-17.6	120.59	-83.39	-24	113.37	-87.69	-28.3]},...
{[1	113.37	-87.69	-28.3	6.39	-120.59	-61.19]},...
{[2	6.39	-120.59	-61.19	0	-121.55	-62.16	-6.5	-120.65	-61.25]},...
{[1	-6.5	-120.65	-61.25	-143.41	-80.51	-21.11]},...
{[2	-143.41	-80.51	-21.11	-150.82	-76.23	-16.83	-153.6	-69.75	-10.35]},...
{[1	-153.6	-69.75	-10.35	-153.6	-69.3	-9.9]},...
{[2	-153.6	-69.3	-9.9	-153.6	-65.31	-4.08	-153.6	-63.71	2.8]},...
{[2	-153.6	-63.71	2.8	-153.6	-45.09	45.09	-153.6	-2.8	63.71]},...
{[2	-153.6	-2.8	63.71	-153.6	4.08	65.31	-153.6	9.9	69.3]}};

coilnames{7,2}={'Blue MOT Tall','Right'};
coildata{7,2}={{2},{[1	-153.6	69.3	9.9	-153.6	69.75	10.35]},...
{[2	-153.6	69.75	10.35	-150.82	76.23	16.83	-143.41	80.51	21.11]},...
{[1	-143.41	80.51	21.11	-6.5	120.65	61.25]},...
{[2	-6.5	120.65	61.25	0	121.55	62.16	6.39	120.59	61.19]},...
{[1	6.39	120.59	61.19	113.37	87.69	28.3]},...
{[2	113.37	87.69	28.3	120.59	83.39	24	123.29	77	17.6]},...
{[1	123.29	77	17.6	123.29	76.37	16.97]},...
{[2	123.29	76.37	16.97	123.29	67.6	4.85	123.29	63.07	-9.41]},...
{[2	123.29	63.07	-9.41	123.29	45.09	-45.09	123.29	9.41	-63.07]},...
{[2	123.29	9.41	-63.07	123.29	-4.85	-67.6	123.29	-16.97	-76.37]},...
{[1	123.29	-16.97	-76.37	123.29	-17.6	-77]},...
{[2	123.29	-17.6	-77	120.59	-24	-83.39	113.37	-28.3	-87.69]},...
{[1	113.37	-28.3	-87.69	6.39	-61.19	-120.59]},...
{[2	6.39	-61.19	-120.59	0	-62.16	-121.55	-6.5	-61.25	-120.65]},...
{[1	-6.5	-61.25	-120.65	-143.41	-21.11	-80.51]},...
{[2	-143.41	-21.11	-80.51	-150.82	-16.83	-76.23	-153.6	-10.35	-69.75]},...
{[1	-153.6	-10.35	-69.75	-153.6	-9.9	-69.3]},...
{[2	-153.6	-9.9	-69.3	-153.6	-4.08	-65.31	-153.6	2.8	-63.71]},...
{[2	-153.6	2.8	-63.71	-153.6	45.09	-45.09	-153.6	63.71	-2.8]},...
{[2	-153.6	63.71	-2.8	-153.6	65.31	4.08	-153.6	69.3	9.9]}};

coilnames{8,1}={'Blue MOT Short','Left'};
coildata{8,1}={{2},{[1	-140.6	-71.77	1.06	-140.6	-71.82	1.11]},...
{[2	-140.6	-71.82	1.11	-138.58	-77.42	6.71	-132.9	-81.52	10.81]},...
{[1	-132.9	-81.52	10.81	-9.78	-137.41	66.7]},...
{[2	-9.78	-137.41	66.7	0	-139.36	68.65	9.02	-137	66.28]},...
{[1	9.02	-137	66.28	104.99	-85.36	14.65]},...
{[2	104.99	-85.36	14.65	109.78	-81.26	10.55	111.5	-76.08	5.36]},...
{[1	111.5	-76.08	5.36	111.5	-75.31	4.6]},...
{[2	111.5	-75.31	4.6	111.5	-66.61	-6.47	111.5	-60.78	-19.29]},...
{[2	111.5	-60.78	-19.29	111.5	-45.09	-45.09	111.5	-19.29	-60.78]},...
{[2	111.5	-19.29	-60.78	111.5	-6.47	-66.61	111.5	4.6	-75.31]},...
{[1	111.5	4.6	-75.31	111.5	5.36	-76.08]},...
{[2	111.5	5.36	-76.08	109.78	10.55	-81.26	104.99	14.65	-85.36]},...
{[1	104.99	14.65	-85.36	9.02	66.28	-137]},...
{[2	9.02	66.28	-137	0	68.65	-139.36	-9.78	66.7	-137.41]},...
{[1	-9.78	66.7	-137.41	-132.9	10.81	-81.52]},...
{[2	-132.9	10.81	-81.52	-138.58	6.71	-77.42	-140.6	1.11	-71.82]},...
{[1	-140.6	1.11	-71.82	-140.6	1.06	-71.77]},...
{[2	-140.6	1.06	-71.77	-140.6	-7.09	-65.52	-140.6	-16.57	-61.58]},...
{[2	-140.6	-16.57	-61.58	-140.6	-45.09	-45.09	-140.6	-61.58	-16.57]},...
{[2	-140.6	-61.58	-16.57	-140.6	-65.52	-7.09	-140.6	-71.77	1.06]}};

coilnames{8,2}={'Blue MOT Short','Right'};
coildata{8,2}={{2},{[1	-140.6	71.77	-1.06	-140.6	71.82	-1.11]},...
{[2	-140.6	71.82	-1.11	-138.58	77.42	-6.71	-132.9	81.52	-10.81]},...
{[1	-132.9	81.52	-10.81	-9.78	137.41	-66.7]},...
{[2	-9.78	137.41	-66.7	0	139.36	-68.65	9.02	137	-66.28]},...
{[1	9.02	137	-66.28	104.99	85.36	-14.65]},...
{[2	104.99	85.36	-14.65	109.78	81.26	-10.55	111.5	76.08	-5.36]},...
{[1	111.5	76.08	-5.36	111.5	75.31	-4.6]},...
{[2	111.5	75.31	-4.6	111.5	66.61	6.47	111.5	60.78	19.29]},...
{[2	111.5	60.78	19.29	111.5	45.09	45.09	111.5	19.29	60.78]},...
{[2	111.5	19.29	60.78	111.5	6.47	66.61	111.5	-4.6	75.31]},...
{[1	111.5	-4.6	75.31	111.5	-5.36	76.08]},...
{[2	111.5	-5.36	76.08	109.78	-10.55	81.26	104.99	-14.65	85.36]},...
{[1	104.99	-14.65	85.36	9.02	-66.28	137]},...
{[2	9.02	-66.28	137	0	-68.65	139.36	-9.78	-66.7	137.41]},...
{[1	-9.78	-66.7	137.41	-132.9	-10.81	81.52]},...
{[2	-132.9	-10.81	81.52	-138.58	-6.71	77.42	-140.6	-1.11	71.82]},...
{[1	-140.6	-1.11	71.82	-140.6	-1.06	71.77]},...
{[2	-140.6	-1.06	71.77	-140.6	7.09	65.52	-140.6	16.57	61.58]},...
{[2	-140.6	16.57	61.58	-140.6	45.09	45.09	-140.6	61.58	16.57]},...
{[2	-140.6	61.58	16.57	-140.6	65.52	7.09	-140.6	71.77	-1.06]}};


for ind=1:8
    for ind2=1:2
        wirecurves(ind,ind2)=generatecurvepoints([],dltarget,coildata,ind,ind2,coilnames); %#ok<AGROW>
    end
end

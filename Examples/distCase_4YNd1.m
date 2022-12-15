function caseObject = distCase_4YNd1

%%  Comments:
%   IEEE distribution test feeder, 4 nodes, step-down distribution
%   transformer, YNyn0 connection.
%   Please see distributionCaseFormat.m for details on the case file format

caseObject.options=[1 1 1];
%%  Single phase base power
caseObject.baseMVA = 2.0000000000;

caseObject.P_sc=00;  %mw 
%% max power for every phase  this is a big add on in the program
caseObject.P_max=00; %mw
%%  Bus data:
%{
bID	type	VmA	VmB	VmC	VaA	VaB	VaC	baseKV
%}
caseObject.bus = [
1	3	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	7.1995578568;
2	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	7.1995578568;
3	1	1.0000000000	1.0000000000	1.0000000000	-30.0000000000	-150.0000000000	90.0000000000	2.4017771198;
4	1	1.0000000000	1.0000000000	1.0000000000	-30.0000000000	-150.0000000000	90.0000000000	2.4017771198;
];

%%  Generator data:
%{
bID	PgA	PgB	PgC	QgA	QgB	QgC	Status
%}
caseObject.gen = [
1	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
];

%%  Wye-load:
%{
bID	YPd0A	YPd0B	YPd0C	YQd0A	YQd0B	YQd0C	YPd1A	YPd1B	YPd1C	YQd1A	YQd1B	YQd1C	YPd2A	YPd2B	YPd2C	YQd2A	YQd2B	YQd2C	Status
%}
caseObject.yload = [
];

%%  Delta-load:
%{
bID	DPd0AB	DPd0BC	DPd0CA	DQd0AB	DQd0BC	DQd0CA	DPd1AB	DPd1BC	DPd1CA	DQd1AB	DQd1BC	DQd1CA	DPd2AB	DPd2BC	DPd2CA	DQd2AB	DQd2BC	DQd2CA	Status
%}
caseObject.dload = [
4	1.2750000000	1.8000000000	2.3750000000	0.7902000000	0.8718000000	0.7806000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
];

%%  Line branch data:
%{
fbus	tbus	R11	R12	R13	R22	R23	R33	X11	X12	X13	X22	X23	X33	B11	B12	B13	B22	B23	B33	Status
%}
caseObject.lineBranch = [
1	2	0.0066880642	0.0022785603	0.0022434831	0.0068196039	0.0023092529	0.0067450647	0.0157555358	0.0073326088	0.0056255155	0.0153199932	0.0061911363	0.0155669955	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
3	4	0.0658779134	0.0156445680	0.0156445680	0.0658779134	0.0156445680	0.0658779134	0.2320091079	0.1397833124	0.1192795711	0.2320091079	0.1280786146	0.2320091079	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
];

%%  Transformer branch data:
%{
fbus	tbus	Rpu	Xpu	TConn	PrimTap	SecTap	Status
%}
caseObject.trafoBranch = [
2	3	0.0100000000	0.0600000000	5	1.0000000000	1.0000000000	1;
];

end
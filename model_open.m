%This script runs when the model is opened.  It will add the model path
%and the support directories to the path.

mdlPath = fileparts(which('Supermileage2016'));
addpath(mdlPath);
addpath(genpath(fullfile(mdlPath, 'Libraries')));
addpath(genpath(fullfile(mdlPath, 'CAN')));
addpath(genpath(fullfile(mdlPath, 'Images')));

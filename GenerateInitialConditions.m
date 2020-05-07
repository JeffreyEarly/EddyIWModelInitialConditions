%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Specify the problem dimensions
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load CyprusSimulationParams.mat;

z = linspace(-Lz,0,nz)';
latitude = asind(coriolis/(2*(7.2921e-5)));
wavemodel = InternalWaveModelArbitraryStratification([Lx, Ly, Lz], [nx, ny, nz], rhobar, z, latitude, 'nModes', 10);
wavemodel.InitializeWithGMSpectrum(1.0);
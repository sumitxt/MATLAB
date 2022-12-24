%{

Stellar Motion
Instructions are in the task pane to the left. Complete and submit each task one at a time.

Do not edit. This code loads the data and defines measurement parameters.
  
  }%
load starData
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14


lambdaEnd= lambdaStart+(nObs-1)*lambdaDelta
lambda = (lambdaStart:lambdaDelta:lambdaEnd)



s=spectra(:,2)


plot(lambda,s,'.-')
xlabel("Wavelength")
ylabel("Intensity")

[sHa,idx]=min(s)
lambdaHa=lambda(idx)



hold on
plot(lambdaHa,sHa,"rs","MarkerSize",8)


z= lambdaHa /656.28-1
speed = z*299792.458

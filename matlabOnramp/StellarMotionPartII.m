% Stellar Motion - Part 2
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code loads the data from the previous project.

load starData

% Task 1
[sHa,idx] = min(spectra);
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458

% Tasks 2 - 4
for v=1:7
    s= spectra(:,v)
    if speed(v) <= 0
        plot(lambda,s,"--")
        else speed(v)>0
    plot(lambda,s,"LineWidth",3)
    end
    hold on
end
hold off

% Task 5
legend(starnames)


% Task 6
movaway = starnames(speed > 0) 
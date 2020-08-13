function [] = powertrainPlot(powerInLower,powerInUpper)

coefficientOne = 0.6;
coefficientTwo = 0.02;
coefficientThree = 0.0015;

power = [powerInLower:powerInUpper];    
powerLoss = 0;
powerOut = 0;
efficiency = powerInLower:powerInUpper;

    for i = 1:power(end)
    
        powerLoss = coefficientOne + (coefficientTwo*power(i)) + (coefficientThree*power(i)*power(i));
        powerOut = power(i) - powerLoss;
        efficiency(i) = powerOut / i;
        i = i + 1;
        
    end
    
figure;
plot(power, efficiency, 'o');
title('Powertrain Propulsion Efficiency');
xlabel('Power Input, kW');
ylabel('Efficiency, %');
xlim([0,powerInUpper]);
ylim([0.7,1]);

end

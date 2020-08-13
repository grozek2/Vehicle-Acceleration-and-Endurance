function [] = endurance(fuelLow, fuelFull)

    efficiencyThermal = 0.25;
    gasolineEnergy = 8.8;
    enginePower = 298;
    
    fuelFlow = enginePower / (efficiencyThermal*gasolineEnergy);
    fuelCapacity = fuelLow:fuelFull;
    endurancePerformance = fuelLow:fuelFull;
    
  
    for i = fuelLow:fuelFull
        
        fuelCapacity(i) = i;
        endurancePerformance(i) = i / fuelFlow;
        i = i + 1;
        
    end
    
figure;
plot(fuelCapacity, endurancePerformance, 'x');
title('Gasoline Engine Endurance');
xlabel('Fuel Range, Liters');
ylabel('Endurance, hours');
xlim([fuelLow, fuelFull]);
ylim([0, 1]);    

end
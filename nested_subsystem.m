% Create a new Simulink model
modelName = 'NestedSubsystemModel';
new_system(modelName);

% Add an Inport and an Outport to the top-level model
add_block('simulink/Ports & Subsystems/In1', [modelName '/In1']);
add_block('simulink/Ports & Subsystems/Out1', [modelName '/Out1']);

% Connect Inport to Outport
add_line(modelName, 'In1/1', 'Out1/1');

% Specify the number of nested subsystems
numSubsystems = 10;

% Create nested subsystems with gain blocks
for i = 1:numSubsystems
    subsystemName = ['Subsystem_' num2str(i)];
    
    % Create a new subsystem
    add_block('simulink/Ports & Subsystems/Subsystem', [modelName '/' subsystemName]);
    
    % Add a Gain block within the subsystem
    add_block('simulink/Continuous/Gain', [modelName '/' subsystemName '/Gain']);
    
    % Connect Inport to Gain block within the subsystem
    add_line(modelName, ['In1/' num2str(i)], [subsystemName '/Gain/1']);
    
    % Connect Gain block to Outport within the subsystem
    add_line(modelName, [subsystemName '/Gain/1'], ['Out1/' num2str(i)]);
end

% Save the model
save_system(modelName);

% Close the model
close_system(modelName, 0);
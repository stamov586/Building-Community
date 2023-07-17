% Building Community: A Program to Help Small Towns Connect 
% Developed by: 

% Created: ____

%% Set up directory 

% Create a directory for the program
mkdir('community_program'); 

%% Read/Write data 

% Read demographic data for towns 
fid = fopen('town_data.csv');
town_data = textscan(fid, '%s%f%f%f', 'Delimiter', ','); 
fclose(fid); 

% Initialize variables 
town_name = town_data{1};
population = town_data{2}; 
household_income = town_data{3}; 
education_level = town_data{4}; 

%% Compute community similarities 

% Compute similarities between towns 
sim_matrix = zeros(length(town_name)); 
for i = 1:length(town_name)
    for j = 1:length(town_name)
        sim_matrix(i, j) = min([population(i), population(j)])/...
            max([population(i), population(j)]) + ...
            min([household_income(i), household_income(j)])/...
            max([household_income(i), household_income(j)]) + ...
            min([education_level(i), education_level(j)])/...
            max([education_level(i), education_level(j)]);
    end 
end 

%% Generate recommendations 

% Initialize variables 
recommendations = cell(length(town_name), 1); 

% For each town, generate a list of towns with similar communities 
for i = 1:length(town_name)
    [~, idx] = sort(sim_matrix(i, :), 'descend'); 
    similar_towns = town_name(idx(2:end)); 
    recommendations{i} = similar_towns; 
end 

%% Save data 

% Save similarity matrix to directory 
dlmwrite('community_program/sim_matrix.csv', sim_matrix); 

% Save recommendations to directory
for i = 1:length(town_name)
    fid = fopen(strcat('community_program/', town_name{i},'_recommendations.txt'), 'w'); 
    fprintf(fid, 'Recommendations for %s:\n\n', town_name{i}); 
    for j = 1:length(recommendations{i})
        fprintf(fid, '%s\n', recommendations{i}{j});
    end 
    fclose(fid); 
end
clear 

dataDir = ['~' filesep 'work' filesep 'sbgCloud' filesep 'data' filesep 'models' filesep 'published' filesep 'Recon3D_301_Thiele_2018' filesep];
resultsDir = ['~' filesep 'work' filesep 'code' filesep 'ctf' filesep 'MOL' filesep];
load([dataDir 'Recon3DModel_301.mat'])
% add MarvinSuite
if ismac
    setenv('PATH', [getenv('PATH') ':/usr/local/bin:/usr/bin:/bin:/Applications/MarvinSuite/bin']);
end

% 1.- VMH (http://vmh.life/)
% 2.- InChI (requires openBabel or Standarizer)
% 3.- Smiles (requires openBabel or Standarizer)
% 4.- KEGG (https://www.genome.jp/)
% 5.- HMDB (https://hmdb.ca/)
% 6.- PubChem (https://pubchem.ncbi.nlm.nih.gov/)
% 7.- CHEBI (https://www.ebi.ac.uk/)

% missingMolFiles = obtainMetStructures(Recon3DModel, [resultsDir 'inchi'], false, false,   [0 1 0 0 0 0 0]);
% missingMolFiles = obtainMetStructures(Recon3DModel, [resultsDir 'smiles'], false, false,  [0 0 1 0 0 0 0]);
missingMolFiles = obtainMetStructures(Recon3DModel, [resultsDir 'KEGG'], false, false,    [0 0 0 4 0 0 0]);
missingMolFiles = obtainMetStructures(Recon3DModel, [resultsDir 'HMDB'], false, false,    [0 0 0 0 5 0 0]);
missingMolFiles = obtainMetStructures(Recon3DModel, [resultsDir 'PubChem'], false, false, [0 0 0 0 0 6 0]);
missingMolFiles = obtainMetStructures(Recon3DModel, [resultsDir 'CHEBI'], false, false,   [0 0 0 0 0 0 7]);

%% Rename and assign in the correct directory
directories = {'VMH', 'inchi', 'smiles', 'KEGG', 'HMDB', 'PubChem', 'CHEBI'};

for i = 1:size(directories, 2)
    if isdir([resultsDir directories{i}])
        fnames = dir([resultsDir directories{i} filesep 'newMol' filesep '*.mol']);
        for j = 1:size(fnames, 1)
            name = fnames(j).name;
            switch name(end - 5)
                case c
                    compartmentDir = [resultsDir directories{i} filesep 'cytoplasm'];
                    if ~isdir(compartmentDir)
                        mkdir(compartmentDir)
                    end
                    movefile([resultsDir directories{i} filesep 'newMol', filesep name], compartmentDir)
                    newName = regexprep(name, '\[', '\_\_91\_\_');
                    newName = regexprep(newName, '\]', '\_\_93\_\_');
                    movefile([compartmentDir filesep name], [compartmentDir filesep newName])
                    getMetaboliteMsDistr(newName, compartmentDir, compartmentDir, 7.2)
                    
            % compartments = ['c'; 'e'; 'g'; 'l'; 'm'; 'n'; 'r'; 'x';'i']
            

            
            
            
% molFileDir = [resultsDir 'dataBase' filesep 'met' filesep 'explicitH', filesep 'molFiles'];
% outputDir = [resultsDir 'dataBase' filesep 'rxn' filesep];
% if ~exist(outputDir,'dir')
%     mkdir(outputDir)
% end
% rxnsToAM = model.rxns;
% hMapping = true;
% maxTime = 1800;
% standariseRxn = true;
% 
% standardisedRxns = obtainAtomMappingsRDT2(model, molFileDir, outputDir, rxnsToAM, hMapping, maxTime, standariseRxn);
% 
% mappedRxns = transportRxnAM([outputDir 'rxnFiles'], [outputDir 'atomMapped']);
% 
% standardiseDB = false
% 
% if standardiseDB
%     
%     movefile(molDir, regexprep(molDir, 'nonStandardised',  'newMol'))
%     molDir = [resultsDir 'dataBase' filesep 'met' filesep 'newMol'];
%     standardisedDir = [resultsDir 'dataBase' filesep 'met' ...
%         filesep 'explicitH' filesep];
%     [standardised, nonStandardised, InChIs, SMILES] = ...
%         standardiseMolDatabase(molDir, standardisedDir, ...
%     standardiseMolFiles)
% 
% end
% 
% updateDB = true;
% missingMolFiles = obtainMetStructures(model, outputDir, updateDB, standardiseMolFiles, orderOfPreference);
% 
% outputDir = [outputDir filesep 'rxn' filesep];
% 
% obtainAtomMappingsRDT2()
% 
% clearvars -except model dataDir resultsDir softwareDir
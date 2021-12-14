<!-- ABOUT THE PROJECT -->
# Chemical table files for constraint-based modelling

This repo contains the molecular structures of metabolites present in different genome-scale models and its metabolic reactions atom mapped obtained with the function [generateChemicalDatabase](https://github.com/opencobra/cobratoolbox/blob/master/src/dataIntegration/chemoInformatics/generateChemicalDatabase.m). The data is divided into three main directories:

### **modelDatabases** 
Contains a metabolite and reaction databases from different genome-scale models including:

- **ecoliCore**
- **iDopaNeuro1**
- **AGORA2**

### **mets** 
Contains a set of metabolite structures from genome-scale models. The metabolite structures are saved in different formats: images, MDL MOL, SMILES, and InChI and InChIkey for molecules without an R group (see Formats) and sorted as follows:

- **molFiles**: A directory with standardised MDL MOL files.
- **images**: A directory with graphical representation of the molecular structures.
- *metaboliteStructures*: Table containing the SMILES, InChIs and InChIkeys for each metabolite structure in the database.

### **rxns** - 
Contains a set of metabolic reactions with their corresponding atom mapping in different formats:

- **atomMapped**: A directory with atom mapped MDL RXN files.
	- **inconsistent**: A directory with atom mapped MDL RXN files modified by the atom mapping algorithm making the reaction inconsistent.
	- **unbalanced**: A directory with atom mapped MDL RXN files with different number of atoms in the reactions and in the substrates.
- **images**: A directory with images of the atom mapped reactions.
- **unMapped**: A directory with unmapped metabolic reactions in MDL RXN file format.
- **txtData**: A directory with atom mapped in SMILES and additional atom mapped data.

<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.

### Installation

   ```sh
   git clone git@github.com:opencobra/ctf.git
   ```

<!-- CONTACT -->
## Contact

Ronan Fleming - ronan.mt.fleming@gmail.com


	

<!-- ABOUT THE PROJECT -->
# Chemical table files for constraint-based modelling

This repo contains the molecular structures of metabolites present in Recon3D and its metabolic reactions atom mapped. The data is divided into 2 main directories:

### **met** 
Contains a set of molecular structures part of Recon3D with highest score after comparing with different sources. The molecular structures with highest score are saved in different formats: images, MDL MOL, SMILES, and InChI and InChIkey for molecules without an R group (see Formats) and sorted as follows:

- **molFiles**: Standardised MDL MOL files.
- **images**: Graphical representation of the molecular structures.
- **molComparison**: Contains the MDL MOL files from the original source where it was obtained.
   - CHEBI: https://www.ebi.ac.uk/chebi/
   - HMDB: https://hmdb.ca/
   - KEGG: https://www.genome.jp/kegg/pathway.html
   - PubChem: https://pubchem.ncbi.nlm.nih.gov/
   - InChI in Recon3D
   - SMILES in Recon3D
- *standardisationReport*: Table containing the  SMILES, InChIs and InChIkeys

### **rxn** - 
Contains a set of Recon 3D metabolic reactions with their corresponding atom mapping calculated with the [Reaction Decoder Tool](https://github.com/asad/ReactionDecoder) or [COBRA Toolbox](https://github.com/opencobra/cobratoolbox/) in different formats:

- **atomMapped**: Atom mapped MDL RXN files
- **images**: Images of the atom mapped reactions
- **rxnFiles**: Unmapped metabolic reactions in MDL RXN file format
- **txtData**: Atom mapped in SMILES and additional atom mapped data

<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.

### Installation

   ```sh
   git clone git@github.com:opencobra/ctf.git
   ```

<!-- CONTACT -->
## Cite

Luojiao Huang, German Preciat, Jesus Alarcon, Edinson L. Moreno, Agnieszka Wegrzyn, Emma Schymanski, Amy Harms, Ronan M.T. Fleming, Thomas Hankemeier, **fluxCobra: An automated pipeline for tracer-based metabolomics data processing and 13C metabolic flux analysis.** *In preparation*.


<!-- CONTACT -->
## Contact

Ronan Fleming - ronan.mt.fleming@gmail.com


	

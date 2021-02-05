# ctf
Chemical table files for constraint-based modelling

This repo contains the molecular structures of metabolites present in Recon3D and its metabolic reactions atom mapped. The data is divided into 4 different directories:

* MOL: All the molecular structures collected in MDL MOL file format			
* * images
* * molFiles

* MOL_validated: Collection of molecular structures from different databases
* * CHEBI: https://www.ebi.ac.uk/chebi/
* * * neutral: Neutralised with openBabel (http://openbabel.org)
* * * original: Downloaded from the database
* * HMDB: https://hmdb.ca/
* * * neutral: Neutralised with openBabel (http://openbabel.org)
* * * original: Downloaded from the database
* * InChI
* * * neutral: Neutralised with openBabel (http://openbabel.org)
* * * original: Converted to MDL MOL with openBabel (http://openbabel.org)
* * KEGG: https://www.genome.jp/kegg/pathway.html
* * * neutral: Neutralised with openBabel (http://openbabel.org)
* * * original: Downloaded from the database
* * PubChem: https://pubchem.ncbi.nlm.nih.gov/
* * * neutral: Neutralised with openBabel (http://openbabel.org)
* * * original: Downloaded from the database
* * SMILES
* * * neutral: Neutralised with openBabel (http://openbabel.org)
* * * original: Downloaded from the database
* * VMH: https://www.vmh.life
* * * adjustedpH: pH based on the compartments 
* * * neutral: Neutralised with openBabel (http://openbabel.org)
* * * neutralStandardized: standardised molecular structures
* * * * images
* * * * molFiles

* RXN: 
* * atomMapped: Atom mapped MDL RXN files
* * images: Images of the atom mapped reactions
* * rxnFiles: Un mapped metabolic reactions in MDL RXN file format
* * txtData: Atom mapped in SMILES and additional atom mapped data
	
* RXN_validated: 
* * atomMapped: Atom mapped MDL RXN files
* * images: Images of the atom mapped reactions
* * rxnFiles: Un mapped metabolic reactions in MDL RXN file format
* * txtData: Atom mapped in SMILES and additional atom mapped data
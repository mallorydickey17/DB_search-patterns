-- DML: section to clear all the tables proir to each run

DELETE FROM gene_alias;
DELETE FROM gene_desc;
DELETE FROM gene_info;

--DML: section to insert all data into the gene_info table

INSERT INTO gene_info (gene_id, gene_sym, gene_status, gene_uniprot, gene_loc)
VALUES ('7157','TP53','REVIEWED','P04637','17p13.1'), 
('4316','MMP7','REVIEWED','P09237','11q22.2'), 
('672','BRCA1','REVIEWED','P09237','17q21.31'), 
('64759','TNS3','VALIDATED','Q68CZ2','7p12.3'), 
('109623479','SNORD169','PROVISIONAL','','14q24.2'), 
('653545','DUX4L5','INFERRED','P0CJ88','4q35.2'),
('162989','DEDD2','REVIEWED','Q8WXF8','19q13.2'), 
('5652','PRSS8','REVIEWED','Q16651','16p11.2'),
('157680','VPS13B','REVIEWED','Q7Z7G8','8q22.2'),
('25989','ULK3','VALIDATED','Q6PHR2','15q24.1'),
('5236','PGM1','REVIEWED','P36871','1p31.3'),
('8028','MLLT10','REVIEWED','P55197','10p12.31'),
('10826','FAXDC2','VALIDATED','Q96IV6','5q33.2'),
('54902','TTC19','REVIEWED','Q6DKK2','17p12'),
('8877','SPHK1','REVIEWED','Q9NYA1','17q25.1'),
('8061','FOSL1','REVIEWED','P15407','11q13.1'),
('150483','TEKT4','VALIDATED','Q8WW24','2q11.1'),
('10180','RBM6','VALIDATED','P78332','3p21.31'),
('92359','CRB3','REVIEWED','Q9BUF7','19p13.3'),
('387104','SOGA3','VALIDATED','Q5TF21','6q22.33');

-- DML: section to insert all data into gene_alias table

INSERT INTO gene_alias (gene_id, alias)
VALUES ('7157','P53'), ('7157','BCC7'), ('7157','LFS1'), ('7157','BMFS5'),
('7157','TRP53'), ('4316','MMP-7'), ('4316','MPSL1'), ('4316','PUMP-1'), 
('672','IRIS'), ('672','PSCP'), ('672','BRCAI'), ('672','BRCC1'), 
('672','FANCS'), ('672','PNCA4'), ('672','RNF53'), ('672','PPP1R53'), 
('64759','TEM6'), ('64759','TENS1'), ('109623479', ''), ('653545',''), 
('162989','FLAME3'), ('162989','FLAME-3'),('5652','CAP1'), 
('5652','PROSTASIN'),('157680','CHS1'), ('157680','COH1'), ('25989',''),
('5236','CDG1T'), ('5236','GSD14'), ('8028','AF10'), ('10826','C5orf4'),
('54902','MC3DN2'), ('54902','2010204O13Rik'), ('8877','SPHK'),
('8061','FRA'), ('8061','FRA1'), ('8061','fra-1'), ('150483',''),
('10180','3G2'), ('10180','g16'), ('10180','DEF3'), ('10180','DEF-3'), 
('10180','HLC-11'), ('10180','NY-LU-12'), ('92359',''), ('387104','C6orf174'),
('387104','dJ403A15.3');

--DML: section to insert all data into the gene_desc table 

INSERT INTO gene_desc (gene_id, gene_type, gene_sum)
VALUES ('7157','protein coding','This gene encodes a tumor suppressor protein containing transcriptional activation, DNA binding, and oligomerization domains. The encoded protein responds to diverse cellular stresses to regulate expression of target genes, thereby inducing cell cycle arrest, apoptosis, senescence, DNA repair, or changes in metabolism. Mutations in this gene are associated with a variety of human cancers, including hereditary cancers such as Li-Fraumeni syndrome. Alternative splicing of this gene and the use of alternate promoters result in multiple transcript variants and isoforms. Additional isoforms have also been shown to result from the use of alternate translation initiation codons from identical transcript variants'), 
('4316','protein coding','This gene encodes a member of the peptidase M10 family of matrix metalloproteinases (MMPs). Proteins in this family are involved in the breakdown of extracellular matrix in normal physiological processes, such as embryonic development, reproduction, and tissue remodeling, as well as in disease processes, such as arthritis and metastasis. The encoded preproprotein is proteolytically processed to generate the mature protease. This secreted protease breaks down proteoglycans, fibronectin, elastin and casein and differs from most MMP family members in that it lacks a conserved C-terminal hemopexin domain. The enzyme is involved in wound healing, and studies in mice suggest that it regulates the activity of defensins in intestinal mucosa. The gene is part of a cluster of MMP genes on chromosome 11. This gene exhibits elevated expression levels in multiple human cancers'), 
('672','protein coding','This gene encodes a 190 kD nuclear phosphoprotein that plays a role in maintaining genomic stability, and it also acts as a tumor suppressor. The BRCA1 gene contains 22 exons spanning about 110 kb of DNA. The encoded protein combines with other tumor suppressors, DNA damage sensors, and signal transducers to form a large multi-subunit protein complex known as the BRCA1-associated genome surveillance complex (BASC). This gene product associates with RNA polymerase II, and through the C-terminal domain, also interacts with histone deacetylase complexes. This protein thus plays a role in transcription, DNA repair of double-stranded breaks, and recombination. Mutations in this gene are responsible for approximately 40% of inherited breast cancers and more than 80% of inherited breast and ovarian cancers. Alternative splicing plays a role in modulating the subcellular localization and physiological function of this gene. Many alternatively spliced transcript variants, some of which are disease-associated mutations, have been described for this gene, but the full-length natures of only some of these variants has been described. A related pseudogene, which is also located on chromosome 17, has been identified.'), 
('64759','protein coding','Predicted to enable phosphatase activity. Predicted to be involved in dephosphorylation and intracellular signal transduction. Predicted to act upstream of or within cell migration; lung alveolus development; and positive regulation of cell population proliferation. Located in cytosol and focal adhesion.'),
('653545','pseudo','This gene is located within a D4Z4 repeat array in the subtelomeric region of chromosome 4q. The D4Z4 repeat is polymorphic in length and a similar D4Z4 repeat array has been identified on chromosome 10. Each D4Z4 repeat unit has an open reading frame (named DUX4) that encodes two homeoboxes; the repeat-array and ORF is conserved in other mammals. There is no evidence for transcription of the gene at this locus though RT-PCR and in vitro expression experiments indicate that a telomeric paralog of this gene is transcribed in some haplotypes. Contraction of the macrosatellite repeat causes autosomal dominant facioscapulohumeral muscular dystrophy '),
('162989','protein coding','This gene encodes a nuclear-localized protein containing a death effector domain (DED). The encoded protein may regulate the trafficking of caspases and other proteins into the nucleus during death receptor-induced apoptosis. Alternative splicing results in multiple transcript variants.'),
('5652','protein coding','This gene encodes a member of the peptidase S1 or chymotrypsin family of serine proteases. The encoded preproprotein is proteolytically processed to generate light and heavy chains that associate via a disulfide bond to form the heterodimeric enzyme. This enzyme is highly expressed in prostate epithelia and is one of several proteolytic enzymes found in seminal fluid. This protease exhibits trypsin-like substrate specificity, cleaving protein substrates at the carboxyl terminus of lysine or arginine residues. The encoded protease partially mediates proteolytic activation of the epithelial sodium channel, a regulator of sodium balance, and may also play a role in epithelial barrier formation.'),
('157680','protein coding','This gene encodes a potential transmembrane protein that may function in vesicle-mediated transport and sorting of proteins within the cell. This protein may play a role in the development and the function of the eye, hematological system, and central nervous system. Mutations in this gene have been associated with Cohen syndrome. Multiple splice variants encoding distinct isoforms have been identified for this gene.'),
('25989','protein coding','Enables protein serine/threonine kinase activity. Involved in several processes, including fibroblast activation; protein autophosphorylation; and regulation of smoothened signaling pathway. Located in cytoplasm.'),
('5236','protein coding','The protein encoded by this gene is an isozyme of phosphoglucomutase (PGM) and belongs to the phosphohexose mutase family. There are several PGM isozymes, which are encoded by different genes and catalyze the transfer of phosphate between the 1 and 6 positions of glucose. In most cell types, this PGM isozyme is predominant, representing about 90% of total PGM activity. In red cells, PGM2 is a major isozyme. This gene is highly polymorphic. Mutations in this gene cause glycogen storage disease type 14. Alternativley spliced transcript variants encoding different isoforms have been identified in this gene.'),('8028','protein coding','This gene encodes a transcription factor and has been identified as a partner gene involved in several chromosomal rearrangements resulting in various leukemias. Multiple transcript variants encoding different isoforms have been found for this gene.'),
('10826','protein coding','Predicted to enable C-4 methylsterol oxidase activity. Involved in positive regulation of megakaryocyte differentiation and positive regulation of protein phosphorylation. Located in cytoplasm.'),
('54902','protein coding','This gene encodes a protein with a tetratricopeptide repeat (TPR) domain containing several TPRs of about 34 aa each. These repeats are found in a variety of organisms including bacteria, fungi and plants, and are involved in a variety of functions including protein-protein interactions. This protein is embedded in the inner mitochondrial membrane and is involved in the formation of the mitochondrial respiratory chain III. It has also been suggested that this protein plays a role in cytokinesis. Mutations in this gene cause mitochondrial complex III deficiency. Alternatively spliced transcript variants have been found for this gene.'),
('8877','protein coding','The protein encoded by this gene catalyzes the phosphorylation of sphingosine to form sphingosine-1-phosphate (S1P), a lipid mediator with both intra- and extracellular functions. Intracellularly, S1P regulates proliferation and survival, and extracellularly, it is a ligand for cell surface G protein-coupled receptors. This protein, and its product S1P, play a key role in TNF-alpha signaling and the NF-kappa-B activation pathway important in inflammatory, antiapoptotic, and immune processes. Phosphorylation of this protein alters its catalytic activity and promotes its translocation to the plasma membrane. Alternative splicing results in multiple transcript variants encoding different isoforms.'),
('8061','protein coding','The Fos gene family consists of 4 members: FOS, FOSB, FOSL1, and FOSL2. These genes encode leucine zipper proteins that can dimerize with proteins of the JUN family, thereby forming the transcription factor complex AP-1. As such, the FOS proteins have been implicated as regulators of cell proliferation, differentiation, and transformation. Several transcript variants encoding different isoforms have been found for this gene.'),
('150483','protein coding','Predicted to be involved in cilium assembly and cilium movement involved in cell motility. Predicted to act upstream of or within regulation of brood size. Located in nucleus.'),
('10180','protein coding','Enables RNA binding activity. Predicted to be involved in mRNA splicing, via spliceosome. Predicted to be active in nucleus.'),
('92359','protein coding','This gene encodes a member of the Crumbs family of proteins. This gene is widely expressed in epithelial tissues where the encoded protein isoforms play various roles such as the control of cytokinesis and ciliogenesis or the formation of tight junctions. Alternative splicing results in multiple transcript variants encoding different isoforms.'),
('387104','protein coding','Predicted to be involved in regulation of autophagy. Predicted to be located in extracellular space. Predicted to be integral component of membrane.');

# !/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
label: Example of a short CWL workflow with BioExcel building blocks
doc: |
  Example of a short 'CWL workflow' with 'BioExcel building blocks', which
  retrieves a 'PDB file' for the 'Lysozyme protein structure' from the RCSB PDB
  database ('step1: pdb.cwl'), and fixes the possible problems in the structure,
  adding 'missing side chain atoms' if needed ('step2: fix_side_chain.cwl').


inputs:
  step1_properties: string
  step1_output_name: string

outputs:
  pdb:
    type: File
    outputSource: step2_fixsidechain/output_pdb_file

steps:
  step1_pdb:
    label: Fetch PDB Structure
    doc: |
      Download a protein structure from the PDB database
    run: https://raw.githubusercontent.com/bioexcel/biobb_adapters/v0.1.4/biobb_adapters/cwl/biobb_io/mmb_api/pdb.cwl
    in:
      output_pdb_path: step1_output_name
      config: step1_properties
    out: [output_pdb_file]
        
  step2_fixsidechain:
    label: Fix Protein structure
    doc: |
      Fix the side chains, adding any side chain atoms missing in the
      original structure.
    run: https://raw.githubusercontent.com/bioexcel/biobb_adapters/v0.1.4/biobb_adapters/cwl/biobb_model/model/fix_side_chain.cwl
    in:
      input_pdb_path: step1_pdb/output_pdb_file
    out: [output_pdb_file]
    
$namespaces:
  edam: http://edamontology.org/
$schemas:
  - http://edamontology.org/EDAM_1.22.owl




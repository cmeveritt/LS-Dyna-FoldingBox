# LS-Dyna-FoldingBox
 Foling of a box in Ls Dyna with Scl and Batch scripts to make it easy to change the parameters of the model

This program was build by Carl-Magnus as an introductary project
Its thus not optimized for anything
Just made for investigating different posibilities

To perform an analysis
1 - run the scl file buildGeometryScript_Calles_Foldingbox5
2 - Save the generated geometry as Foldingbox5-Geom
3 - Update the geometry file through running the program Part_ID_changer which calles Part_ID_remover
This creates two new geometry files Foldingbox5-New_Parts_Geom and Foldingbox5-No_Parts_Geom which 
contains a formated geometry with the right part definitions for the boundary file
4 - Run the Foldingbox5-Main file to perform the analysis. 


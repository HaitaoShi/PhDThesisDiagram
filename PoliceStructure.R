install.packages("DiagrammeR")
library(DiagrammeR)
 
grViz("
digraph {

graph [layout = dot]

node [shape = box, style = filled, fillcolor = Ivory, label = '', fontname = Helvetica]

MPS [label = 'Ministry of Public Security', shape = box, fillcolor = LightGoldenrodYellow, width = 6]

PSD [label = 'Provincial Public \n Security Departments (22)', fillcolor = LightYellow]
ARPSB [label = 'Autonoumous Region \n Public Security Departments (5)', fillcolor = LightYellow]
CAMPSD [label = 'Centrally-Administered Municipal \n Public Security Departments (4)', fillcolor = LightYellow]
RPSB [label = 'Regional Public \n Security Bureaus']
RPSB [label = 'Regional Public \n Security Bureaus']
PPSB [label = 'Prefectural Public \n Security Bureaus']
DPSB [label = 'District Public \n Security Bureaus']
PS [label = 'Police Stations']
 

edge [color = black]
MPS -> {PSD ARPSB CAMPSD} 
PSD -> RPSB -> PS
PSD -> PPSB -> PS
ARPSB -> RPSB -> PS
ARPSB -> PPSB -> PS
CAMPSD -> DPSB -> PS
CAMPSD -> PPSB -> PS
}

")

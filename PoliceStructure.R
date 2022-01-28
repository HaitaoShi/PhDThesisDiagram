install.packages("DiagrammeR")
library(DiagrammeR)

grViz("
digraph {

graph [layout = dot]

node [shape = box, style = filled, fillcolor = Ivory, label = '']

MPS [label = 'Ministry of Public Security', shape = box, fillcolor = LightGoldenrodYellow]

PSD [label = 'Provincial Public Security Departments (22)', fillcolor = LightYellow]
ARPSB [label = 'Autonoumous Region \n Public Security Departments (5)', fillcolor = LightYellow]
CAMPSD [label = 'Centrally-Administered Municipal \n Public Security Departments (4)', fillcolor = LightYellow]
RPSB1 [label = 'Regional Public \n Security Bureaus']
RPSB2 [label = 'Regional Public \n Security Bureaus']
PPSB1 [label = 'Prefectural Public \n Security Bureaus']
PPSB2 [label = 'Prefectural Public \n Security Bureaus']
PPSB3 [label = 'Prefectural Public \n Security Bureaus']
DPSB [label = 'District Public \n Security Bureaus']
PS1 [label = '@@1']
PS2 [label = '@@1']
PS3 [label = '@@1']
PS4 [label = '@@1']
PS5 [label = '@@1']
PS6 [label = '@@1']

edge [color = black]
MPS -> {PSD ARPSB CAMPSD} 
PSD -> RPSB1 -> PS1
PSD -> PPSB1 -> PS2
ARPSB -> RPSB2 -> PS3
ARPSB -> PPSB2 -> PS4
CAMPSD -> DPSB -> PS5
CAMPSD -> PPSB3 -> PS6
}
[1]:'Police Stations'

")

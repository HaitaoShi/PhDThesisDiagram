install.packages("DiagrammeR")
library(DiagrammeR)

grViz("
digraph {

graph [layout = neato, overlap = false]

node [shape = circle, style = filled, fillcolor = Ivory, label = '', fixedsize = true, fontname = Helvetica]
  
JPB [label = 'Jixiang Bureau \n of Public Security', fillcolor = LightGoldenrodYellow, width = 3, fontsize = 25]
NPS [label = 'New Town \n Police Station', fillcolor = LightGoldenrodYellow, width = 2.2, fontsize = 20]
OPS [label = 'Old Town \n Police Station', fillcolor = LightGoldenrodYellow, width = 2.2, fontsize = 20]
ADC [label = 'Anti-Drug \n Corps', fillcolor = LightGoldenrodYellow, width = 2.2, fontsize = 20]
SWAT [label = 'Special Weapons \n and Tactics', width = 1.9, fontsize = 15]
CPS [label = 'Community Policing \n Squad', width = 1.9, fontsize = 15]
PSS [label = 'Public Security \n Squad', width = 1.9, fontsize = 15]
SMS [label = 'Sites Management \n Squad', width = 1.9, fontsize = 15]
FCS [label = 'Fighting Crimes \n Squad', width = 1.9, fontsize = 15]
CPS2[label = 'Community Policing \n Squad', width = 1.9, fontsize = 15]



edge [color = black, arrowhead = vee]
JPB -> {NPS OPS ADC} 
NPS -> {SWAT CPS PSS SMS}
OPS -> {FCS CPS2}
}
")


### DOT语言语法规则

```
     graph: [ strict ] (graph | digraph) [ ID ] '{' stmt_list '}'
 stmt_list: [ stmt [ ';' ] stmt_list ]
      stmt: node_stmt |	edge_stmt |	attr_stmt |	ID '=' ID |	subgraph
 attr_stmt: (graph | node | edge) attr_list
 attr_list: '[' [ a_list ] ']' [ attr_list ]
    a_list: ID '=' ID [ (';' | ',') ] [ a_list ]
 edge_stmt: (node_id | subgraph) edgeRHS [ attr_list ]
   edgeRHS: edgeop (node_id | subgraph) [ edgeRHS ]
 node_stmt: node_id [ attr_list ]
   node_id: ID [ port ]
      port: ':' ID [ ':' compass_pt ] |	':' compass_pt
  subgraph: [ subgraph [ ID ] ] '{' stmt_list '}'
compass_pt: (n | ne | e | se | s | sw | w | nw | c | _)
```

#### 属性列表

| Name | Used By | Type | Default | Minimum | Notes |
| :---: | :---: | :---: | :---: | :---: | :---: |
| Damping  | G | double |  0.99 | 0.0 | neato only |
| K  | GC | double |  0.3 | 0 | sfdp, fdp only |
| URL | ENGC |   escString  |  &lt;none&gt; |  | svg, postscript, map only |
| _background  | G | string |  &lt;none&gt; |  |  | 
| area | NC | double |  1.0 | &gt;0 | patchwork only |
| arrowhead | E | arrowType |  normal |  |  |
| arrowsize | E | double |  1.0 | 0.0 |  |
| arrowtail | E |   arrowType |  normal |  |  |
| bb  | G |   rect |   |  | write only |
| bgcolor | GC |   color/colorList |  &lt;none&gt; |  |  |
| center | G |   bool  |  false |  |  |
| charset | G | string |  "UTF-8" |  |  |
| clusterrank | G |   clusterMode |  local |  | dot only |
| color | ENC | color/colorList |  black |  |  |
| colorscheme | ENCG | string |  "" |  |  |
| comment | ENG | string |  "" |  |  |
| compound | G | bool |  false |  | dot only |
| concentrate | G |   bool |  false |  |  |
| constraint  | E |   bool |  true |  | dot only |
| decorate  | E |   bool |  false |  |  |
| defaultdist | G | double |  1+(avg. len)*sqrt(\|V\|) | epsilon | neato only |
| dim | G | int |  2 | 2 | sfdp, fdp, neato only |
| dimen | G | int |  2 | 2 | sfdp, fdp, neato only |
| dir | E | dirType |  forward(directed)<br />none(undirected) |  |  |
| diredgeconstraints | G | string<br>  bool |  false |  | neato only |
| distortion | N | double |  0.0 | -100.0 |  |
| dpi  |  G | double |  96.0<br>0.0 |  | svg, bitmap output only |
| edgeURL  |  E |   escString  |   "" |  | svg, map only |
| edgehref  |  E |   escString  |   "" |  | svg, map only |
| edgetarget  |  E |   escString  |   &lt;none&gt; |  | svg, map only |
| edgetooltip  |  E |   escString  |   "" |  | svg, cmap only |
| epsilon  |  G | double |  .0001 * # nodes(mode == KK)<br>.0001(mode == major) |  | neato only |
| esep  |  G |   addDouble/addPoint  |   +3 |  | not dot |
| fillcolor  |  NEC |   color/colorList  |   lightgrey(nodes)<br />black(clusters) |  |  |
| fixedsize  |  N |   bool/string |  false |  |  |
| fontcolor  |  ENGC |   color  |   black |  |  |
| fontname  |  ENGC | string |  "Times-Roman" |  |  |
| fontnames  |  G | string |  "" |  | svg only |
| fontpath  |  G | string |  system-dependent |  |  |
| fontsize  |  ENGC | double |  14.0 | 1.0 |  |
| forcelabels  |  G |   bool  |   true |  |  |
| gradientangle  |  NCG | int |  "" |  |  |
| group  |  N | string |  "" |  | dot only |
| headURL  |  E |   escString  |   "" |  | svg, map only |
| head_lp  |  E |   point  |    |  | write only |
| headclip  |  E |   bool  |   true |  |  |
| headhref  |  E |   escString  |   "" |  | svg, map only |
| headlabel  |  E |   lblString  |   "" |  |  |
| headport  |  E |   portPos  |   center |  |  |
| headtarget  |  E |   escString  |   &lt;none&gt; |  | svg, map only |
| headtooltip  |  E |   escString  |   "" |  | svg, cmap only |
| height  |  N | double |  0.5 | 0.02 |  |
| href  |  GCNE |   escString  |   "" |  | svg, postscript, map only |
| id  |  GCNE |   escString  |   "" |  | svg, postscript, map only |
| image  |  N | string |  "" |  |  |
| imagepath  |  G | string |  "" |  |  |
| imagepos  |  N | string |  "mc" |  |  |
| imagescale  |  N |   bool/string |  false |  |  |
| inputscale  |  G | double |  &lt;none&gt; |  | fdp, neato only |
| label  |  ENGC |   lblString  |   "\N" (nodes)<br>"" (otherwise) |  |  |
| labelURL  |  E |   escString  |   "" |  | svg, map only |
| label_scheme  |  G | int |  0 | 0 | sfdp only |
| labelangle  |  E | double |  -25.0 | -180.0 |  |
| labeldistance  |  E | double |  1.0 | 0.0 |  |
| labelfloat  |  E |   bool  |   false |  |  |
| labelfontcolor  |  E |   color  |   black |  |  |
| labelfontname  |  E | string |  "Times-Roman" |  |  |
| labelfontsize  |  E | double |  14.0 | 1.0 |  |
| labelhref  |  E |   escString  |   "" |  | svg, map only |
| labeljust  |  GC | string |  "c" |  |  |
| labelloc  |  NGC | string |  "t"(clusters)<br>"b"(root graphs)<br>"c"(nodes) |  |  |
| labeltarget  |  E |   escString  |   &lt;none&gt; |  | svg, map only |
| labeltooltip  |  E |   escString  |   "" |  | svg, cmap only |
| landscape  |  G |   bool  |   false |  |  |
| layer  |  ENC |   layerRange  |   "" |  |  |
| layerlistsep  |  G | string |  "," |  |  |
| layers  |  G |   layerList  |   "" |  |  |
| layerselect  |  G |   layerRange  |   "" |  |  |
| layersep  |  G | string |  " :\t" |  |  |
| layout  |  G | string |  "" |  |  |
| len  |  E | double |  1.0(neato)<br>0.3(fdp) |  | fdp, neato only |
| levels  |  G | int |  MAXINT | 0.0 | sfdp only |
| levelsgap  |  G | double |  0.0 |  | neato only |
| lhead  |  E | string |  "" |  | dot only |
| lheight  |  GC | double |   |  | write only |
| lp  |  EGC |   point  |    |  | write only |
| ltail  |  E | string |  "" |  | dot only |
| lwidth  |  GC | double |   |  | write only |
| margin  |  NCG | double<br>  point  |   &lt;device-dependent&gt; |  |  |
| maxiter  |  G | int |  100 * # nodes(mode == KK)<br>200(mode == major)<br>600(fdp) |  | fdp, neato only |
| mclimit  |  G | double |  1.0 |  | dot only |
| mindist  |  G | double |  1.0 | 0.0 | circo only |
| minlen  |  E | int |  1 | 0 | dot only |
| mode  |  G | string |  major |  | neato only |
| model  |  G | string |  shortpath |  | neato only |
| mosek  |  G |   bool  |   false |  | neato only |
| newrank  |  G |   bool  |   false |  | dot only |
| nodesep  |  G | double |  0.25 | 0.02 |  |
| nojustify  |  GCNE |   bool  |   false |  |  |
| normalize  |  G | double<br>  bool  |   false |  | not dot |
| notranslate  |  G |   bool  |   false |  | neato only |
| nslimit/nslimit1  |  G | double |   |  | dot only |
| ordering  |  GN | string |  "" |  | dot only |
| orientation  |  N | double |  0.0 | 360.0 |  |
| orientation  |  G | string |  "" |  |  |
| outputorder  |  G |   outputMode  |   breadthfirst |  |  |
| overlap  |  G | string<br>  bool  |   true |  | not dot |
| overlap_scaling  |  G | double |  -4 | -1.0e10 | prism only |
| overlap_shrink  |  G |   bool  |   true |  | prism only |
| pack  |  G |   bool/int |  false |  |  |
| packmode  |  G |   packMode  |   node |  |  |
| pad  |  G | double<br>  point  |   0.0555 (4 points) |  |  |
| page  |  G | double<br>  point  |    |  |  |
| pagedir  |  G |   pagedir  |   BL |  |  |
| pencolor  |  C |   color  |   black |  |  |
| penwidth  |  CNE | double |  1.0 | 0.0 |  |
| peripheries  |  NC | int |  shape default(nodes)<br>1(clusters) | 0 |  |
| pin  |  N |   bool  |   false |  | fdp, neato only |
| pos  |  EN |   point/splineType  |    |  |  |
| quadtree  |  G |   quadType/bool  |   normal |  | sfdp only |
| quantum  |  G | double |  0.0 | 0.0 |  |
| rank  |  S |   rankType  |    |  | dot only |
| rankdir  |  G |   rankdir  |   TB |  | dot only |
| ranksep  |  G | double<br>  doubleList  |   0.5(dot)<br>1.0(twopi) | 0.02 | twopi, dot only |
| ratio  |  G | double<br>string |   |  |  |
| rects  |  N |   rect  |    |  | write only |
| regular  |  N |   bool  |   false |  |  |
| remincross  |  G |   bool  |   true |  | dot only |
| repulsiveforce  |  G | double |  1.0 | 0.0 | sfdp only |
| resolution  |  G | double |  96.0<br>0.0 |  | svg, bitmap output only |
| root  |  GN | string<br>  bool  |   &lt;none&gt;(graphs)<br>false(nodes) |  | circo, twopi only |
| rotate  |  G | int |  0 |  |  |
| rotation  |  G | double |  0 |  | sfdp only |
| samehead  |  E | string |  "" |  | dot only |
| sametail  |  E | string |  "" |  | dot only |
| samplepoints  |  N | int |  8(output)<br>20(overlap and image maps) |  |  |
| scale  |  G | double<br>  point  |    |  | not dot |
| searchsize  |  G | int |  30 |  | dot only |
| sep  |  G |   addDouble/addPoint  |   +4 |  | not dot |
| shape  |  N |   shape  |   ellipse |  |  |
| shapefile  |  N | string |  "" |  |  |
| showboxes  |  ENG | int |  0 | 0 | dot only |
| sides  |  N | int |  4 | 0 |  |
| size  |  G | double<br>  point  |    |  |  |
| skew  |  N | double |  0.0 | -100.0 |  |
| smoothing  |  G |   smoothType  |   "none" |  | sfdp only |
| sortv  |  GCN | int |  0 | 0 |  |
| splines  |  G |   bool/string |   |  |  |
| start  |  G |   startType  |   "" |  | fdp, neato only |
| style  |  ENCG |   style  |   "" |  |  |
| stylesheet  |  G | string |  "" |  | svg only |
| tailURL  |  E |   escString  |   "" |  | svg, map only |
| tail_lp  |  E |   point  |    |  | write only |
| tailclip  |  E |   bool  |   true |  |  |
| tailhref  |  E |   escString  |   "" |  | svg, map only |
| taillabel  |  E |   lblString  |   "" |  |  |
| tailport  |  E |   portPos  |   center |  |  |
| tailtarget | E | escString |  &lt;none&gt; |  | svg, map only |
| tailtooltip | E | escString |  "" |  | svg, cmap only |
| target | ENGC |  escString/string |  &lt;none&gt; |  | svg, map only |
| tooltip | NEC | escString  |  "" |  | svg, cmap only |
| truecolor | G | bool  |   |  | bitmap output only |
| vertices | N | pointList |   |  | write only |
| viewport | G | viewPort |  "" |  |  |
| voro_margin | G | double |  0.05 | 0.0 | not dot |
| weight | E | int<br>double |  1 | 0(dot,twopi)<br>1(neato,fdp) |  |
| width | N | double |  0.75 | 0.01 |  |
| xdotversion | G | string |   |  | xdot only |
| xlabel | EN |   lblString |  "" |  |  |
| xlp | NE |   point |   |  | write only |
| z | N | double |  0.0 | -MAXFLOAT<br>-1000 |  |



#### 箭头样式

```
    arrowname:	aname [ aname [ aname [ aname ] ] ]
        aname:	[ modifiers ] shape
    modifiers:	[ 'o' ] [ side ]
         side:	'l' | 'r'
        shape:	box | crow | curve | icurve | diamond |	dot | inv |	none | normal |	tee | vee
```

| shape         | 效果                                      |
| :---          | :---                                      |
| box           | ![box](assets/images/a_box.gif)           |
| crow          | ![crow](assets/images/a_crow.gif)         |
| curve         | ![curve](assets/images/a_curve.gif)       |
| diamond       | ![diamond](assets/images/a_diamond.gif)   |
| dot           | ![dot](assets/images/a_dot.gif)           |
| icurve        | ![icurve](assets/images/a_icurve.gif)     |
| inv           | ![inv](assets/images/a_inv.gif)           |
| none          | ![none](assets/images/a_none.gif)         |
| normal        | ![normal](assets/images/a_normal.gif)     |
| tee           | ![tee](assets/images/a_tee.gif)           |
| vee           | ![vee](assets/images/a_open.gif)          |


#### 配色方案

* [默认X11配色方案](assets/x11-color-scheme.html)
* [支持SVG配色方案](assets/svg-color-scheme.html)
* [详情](https://graphviz.gitlab.io/_pages/doc/info/colors.html)


#### 主要参考

* [官网地址][graphviz]
* [新官网地址][new-graphviz]



[graphviz]: https://www.graphviz.org/ "Graphviz"
[new-graphviz]: https://www2.graphviz.org/ "Graphviz"




//List of Binary operators/Relation Symbols
import 'package:online_latex_editor/models.dart/mathmodelsnproviders.dart';

List<SecondaryButton> binaryorrelationsymbols = [
  SecondaryButton(name: 'multiply', latexstring: r'\times'),
  SecondaryButton(name: 'division', latexstring: r'\div'),
  SecondaryButton(name: 'cap', latexstring: r'\cap'),
  SecondaryButton(name: 'cup', latexstring: r'\cup'),
  SecondaryButton(name: 'notequal', latexstring: r'\neq'),
  SecondaryButton(name: 'greaterthanoreuqalto', latexstring: r'\geq'),
  SecondaryButton(name: 'in', latexstring: r'\in'),
  SecondaryButton(name: 'perp', latexstring: r'\perp'),
  SecondaryButton(name: 'notin', latexstring: r'\notin'),
  SecondaryButton(name: 'subset', latexstring: r'\subset'),
  SecondaryButton(name: 'simeq', latexstring: r'\simeq'),
  SecondaryButton(name: 'approx', latexstring: r'\approx'),
  SecondaryButton(name: 'wedge', latexstring: r'\wedge'),
  SecondaryButton(name: 'vee', latexstring: r'\vee'),
  SecondaryButton(name: 'oplus', latexstring: r'\oplus'),
  SecondaryButton(name: 'otimes', latexstring: r'\otimes'),
  SecondaryButton(name: 'Box	', latexstring: r'\Box'),
  SecondaryButton(name: 'boxtimes', latexstring: r'\boxtimes'),
  SecondaryButton(name: 'equiv', latexstring: r'\equiv'),
  SecondaryButton(name: 'cong', latexstring: r'\cong'),
];
//

//List of Mathematical Operators

List<SecondaryButton> mathematicaloperatorslist = [
  SecondaryButton(name: 'sin', latexstring: r'sin()'),//does not understand spacing
  SecondaryButton(name: 'cos', latexstring: r'cos()'),
  SecondaryButton(name: 'tan', latexstring: r'tan()'),
  SecondaryButton(name: 'cot', latexstring: r'cot()'),
  SecondaryButton(name: 'sec', latexstring: r'sec()'),
  SecondaryButton(name: 'cosec', latexstring: r'csc()'),
  SecondaryButton(name: 'exp', latexstring: r'exp{}'),
  SecondaryButton(name: 'ker', latexstring: r'ker{}'),
  SecondaryButton(name: 'min', latexstring: r'min'),
  SecondaryButton(name: 'sinh', latexstring: r'sinh()'),
  SecondaryButton(name: 'arcsin', latexstring: r'arcsin()'),
  SecondaryButton(name: 'cosh', latexstring: r'cosh()'),
  SecondaryButton(name: 'tanh', latexstring: r'tanh()'),
  SecondaryButton(name: 'coth', latexstring: r'coth()'),
  SecondaryButton(name: 'deg', latexstring: r'deg()'),
  SecondaryButton(name: 'arctan', latexstring: r'arctan()'),
  SecondaryButton(name: 'liminf', latexstring: r'liminf'),
];



//List of brackets and parenthesis

List<SecondaryButton> bracketslist = [
  SecondaryButton(name: 'Parentheses', latexstring: r'(x+y)'),
  SecondaryButton(name: 'square brackets', latexstring: r'[x+y]'),
  SecondaryButton(name: 'curly brackets', latexstring: r'\{ x+y \}'),
  SecondaryButton(name: 'Angle brackets', latexstring: r'\langle x+y \rangle'),
  SecondaryButton(name: 'Pipes; vertical bars', latexstring: r'|x+y|'),
  SecondaryButton(name: 'Double pipes', latexstring: r'\|x+y\|'),
];

//List of integrals,summations and limits
List<SecondaryButton> integralssumandlimits = [
  SecondaryButton(name: 'Integral', latexstring: r'\int_{a}^{b}'),
  SecondaryButton(name: 'Oint', latexstring: r'\oint'),
  SecondaryButton(name: 'Summation', latexstring: r'\sum_{x}^{y}'),
  SecondaryButton(name: 'Product', latexstring: r'\prod_{i=a}^{b}'),
  SecondaryButton(
      name: 'Limit',
      latexstring:
          r'lim_{x\to\infty}'), //error on putting other number in place of infinity
];

//List of miscellenious symbols
List<SecondaryButton> miscellaneoussymbolslist = [
  SecondaryButton(name: 'Infinity', latexstring: r'\infty'),
  SecondaryButton(name: 'Forall', latexstring: r'\forall'),
  SecondaryButton(name: 'Re', latexstring: r'\Re'),
  SecondaryButton(name: 'Im', latexstring: r'\Im'),
  SecondaryButton(name: 'Nabla', latexstring: r'\nabla'),
  SecondaryButton(name: 'Exists', latexstring: r'\exists'),
  SecondaryButton(name: 'Partial', latexstring: r'\partial'),
  SecondaryButton(name: 'NExists', latexstring: r'\nexists'),
  SecondaryButton(name: 'Emptyset', latexstring: r'\emptyset'),
  SecondaryButton(name: 'Varnothing', latexstring: r'\varnothing'),
  SecondaryButton(name: 'Wp', latexstring: r'\wp'),
  SecondaryButton(name: 'Complement', latexstring: r'\complement'),
  SecondaryButton(name: 'Neg', latexstring: r'\neg'),
  SecondaryButton(name: 'Cdots', latexstring: r'\cdots'),
  SecondaryButton(name: 'Triangle', latexstring: r'\triangle'),
  SecondaryButton(name: 'Surd', latexstring: r'\surd'),
];

//List of greek symbols
List<SecondaryButton> greeksymbolslist = [
  SecondaryButton(name: 'Alpha', latexstring: r'\alpha '),
  SecondaryButton(name: 'Beta', latexstring: r'\beta '),
  SecondaryButton(name: 'Xi', latexstring: r'\xi'),
  SecondaryButton(name: 'Xi', latexstring: r'\Xi'),
  SecondaryButton(name: 'Gamma', latexstring: r'\gamma'),
  SecondaryButton(name: 'Delta1', latexstring: r'\delta'),
  SecondaryButton(name: 'Delta2', latexstring: r'\Delta'),
  SecondaryButton(name: 'Pi', latexstring: r'\pi'),
  SecondaryButton(name: 'Epsilon', latexstring: r'\epsilon'),
  SecondaryButton(name: 'Varepsilon', latexstring: r'\varepsilon'),
  SecondaryButton(name: 'Rho', latexstring: r'\rho'),
  SecondaryButton(name: 'partial', latexstring: r'\partial'),
  SecondaryButton(name: 'Varrho', latexstring: r'\varrho'),
  SecondaryButton(name: 'Zeta', latexstring: r'\zeta'),
  SecondaryButton(name: 'Sigma', latexstring: r'\sigma'),
  SecondaryButton(name: 'Sigma', latexstring: r'\Sigma'),
  SecondaryButton(name: 'Eta', latexstring: r'\eta'),
  SecondaryButton(name: 'Tau', latexstring: r'\tau'),
  SecondaryButton(name: 'Theta', latexstring: r'\theta'),
  SecondaryButton(name: 'Vartheta', latexstring: r'\vartheta'),
  SecondaryButton(name: 'Theta', latexstring: r'\Theta'),
  SecondaryButton(name: 'Upsilon', latexstring: r'\upsilon'),
  SecondaryButton(name: 'Upsilon', latexstring: r'\Upsilon'),
  SecondaryButton(name: 'Phi', latexstring: r'\phi'),
  SecondaryButton(name: 'Varphi', latexstring: r'\varphi'),
  SecondaryButton(name: 'Phi', latexstring: r'\Phi'),
  SecondaryButton(name: 'Kappa', latexstring: r'\kappa'),
  SecondaryButton(name: 'Chi', latexstring: r'\chi'),
  SecondaryButton(name: 'Lambda', latexstring: r'\lambda'),
  SecondaryButton(name: 'Lambda', latexstring: r'\Lambda'),
  SecondaryButton(name: 'Psi1', latexstring: r'\psi'),
  SecondaryButton(name: 'Psi2', latexstring: r'\Psi'),
  SecondaryButton(name: 'Mu', latexstring: r'\mu'),
  SecondaryButton(name: 'Omega1', latexstring: r'\omega'),
  SecondaryButton(name: 'Omega2', latexstring: r'\Omega'),
];

//List of arrows 

List<SecondaryButton> arrowslist = [

    SecondaryButton(name: 'leftarrow', latexstring: r'\leftarrow'),
  SecondaryButton(name: 'Leftarrow', latexstring: r'\Leftarrow'),
  SecondaryButton(name: 'rightarrow', latexstring: r'\rightarrow'),
  SecondaryButton(name: 'Rightarrow', latexstring: r'\Rightarrow'),
  SecondaryButton(name: 'leftrightarrow', latexstring: r'\leftrightarrow'),
  SecondaryButton(name: 'rightleftharpoons', latexstring: r'\rightleftharpoons'),
  SecondaryButton(name: 'uparrow', latexstring: r'\uparrow'),
  SecondaryButton(name: 'downarrow', latexstring: r'\downarrow'),
  SecondaryButton(name: 'Uparrow', latexstring: r'\Uparrow'),
  SecondaryButton(name: 'Downarrow', latexstring: r'\Downarrow'),
  SecondaryButton(name: 'Leftrightarrow', latexstring: r'\Leftrightarrow'),
  SecondaryButton(name: 'Updownarrow', latexstring: r'\Updownarrow'),
  SecondaryButton(name: 'mapsto', latexstring: r'\mapsto'),
  SecondaryButton(name: 'longmapsto', latexstring: r'\longmapsto'),
  SecondaryButton(name: 'nearrow', latexstring: r'\nearrow'),
  SecondaryButton(name: 'searrow', latexstring: r'\searrow'),
  SecondaryButton(name: 'swarrow', latexstring: r'\swarrow'),
  SecondaryButton(name: 'nwarrow', latexstring: r'\nwarrow'),
  SecondaryButton(name: 'leftharpoonup', latexstring: r'\leftharpoonup'),
  SecondaryButton(name: 'rightharpoonup', latexstring: r'\rightharpoonup'),
  SecondaryButton(name: 'leftharpoondown', latexstring: r'\leftharpoondown'),
  SecondaryButton(name: 'rightharpoondown', latexstring: r'\rightharpoondown'),
 

];

//List of common mathematical expressions 
List<SecondaryButton> commonequations = [
      SecondaryButton(
        name: 'xpowera',
        latexstring: r'x^{y}'
      ),
       SecondaryButton(
        name: 'xsuperscripta',
        latexstring: r'x_{y}'
      ), 
      SecondaryButton(
        name: 'xsquarea',
        latexstring: r'\sqrt{x}'
      ), 
       SecondaryButton(
        name: 'xsquareapowern',
        latexstring: r'\sqrt[x]{y}'
      ), 
       SecondaryButton(
        name: 'xsubandsuperscripta',
        latexstring: r'x^{y1}_{y2}'
      ),
      
       SecondaryButton(name: 'fraction', latexstring: r'\frac{n}{k}'),
       SecondaryButton(name: 'binomial', latexstring: r'\binom{n}{k}'),
         SecondaryButton(name: 'doughbydoughx', latexstring: r'\frac{\partial }{\partial x}'),
          SecondaryButton(name: 'doughbydoughxpower', latexstring: r'\frac{\partial^2 }{\partial x^2}'),//error
     
      SecondaryButton(
        name: 'xsubandsuperscripta',
        latexstring: r'_{x}^{y}\textrm{C}'
      )
];

//List of differentiations
List<SecondaryButton> differentialequationslist = [
    SecondaryButton(
      name: '',
      latexstring: r"\frac{\mathrm{d} }{\mathrm{d} x}"//error not understanding the type 
      //may be an assac library 
    ),
];

//List of Matrices

List<SecondaryButton> matriceslist = [
  SecondaryButton(
    name:r'{bmatrix}',
    latexstring: r'\begin{bmatrix} x1&  x2& \\ x3&  x4& \end{bmatrix}'
  ),
  SecondaryButton(
    name:r'{Bmatrix}',
    latexstring: r'\begin{Bmatrix}x1&  x2& \\ x3&  x4&  \end{Bmatrix}'
  ),
  SecondaryButton(
    name:r'{vmatrix}',
    latexstring: r'\begin{vmatrix}x1&  x2& \\ x3&  x4&  \end{vmatrix}'
  ),
  //not supported yet
  SecondaryButton(
    name:r'{Vmatrix}',
    latexstring: r'\begin{Vmatrix}x1&  x2& \\ x3&  x4&  \end{Vmatrix}'
  ),
  
];
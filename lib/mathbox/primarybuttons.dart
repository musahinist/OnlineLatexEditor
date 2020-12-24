



import 'package:online_latex_editor/mathbox/secondbuttonslists.dart';
import 'package:online_latex_editor/models.dart/mathmodelsnproviders.dart';

List<PrimaryButton> primarybuttonslist = [
  PrimaryButton(
      name: 'binaryorrelationsymbols',
      secondaybuttonslist: binaryorrelationsymbols),
  PrimaryButton(
      name: 'mathematicaloperatorslist',
      secondaybuttonslist: mathematicaloperatorslist),
  PrimaryButton(name: 'commonequations', secondaybuttonslist: commonequations),
  PrimaryButton(name: 'bracketslist', secondaybuttonslist: bracketslist),
  PrimaryButton(
      name: 'differentialequationslist',
      secondaybuttonslist: differentialequationslist),
  PrimaryButton(
      name: 'integralssumandlimits ',
      secondaybuttonslist: integralssumandlimits),
  PrimaryButton(
      name: 'miscellaneoussymbolslist ',
      secondaybuttonslist: miscellaneoussymbolslist),
  PrimaryButton(
      name: 'greeksymbolslist ', secondaybuttonslist: greeksymbolslist),
  PrimaryButton(name: 'arrowslist', secondaybuttonslist: arrowslist),
    PrimaryButton(name: 'matriceslist', secondaybuttonslist:matriceslist)
];

//Save equations
List<SecondaryButton> savedequations = [
  SecondaryButton(name: 'horrified equation',latexstring: r'x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}'),
  SecondaryButton(name: 'horrified2 equation',latexstring: r'i\hbar\frac{\partial}{\partial t}\Psi(\vec x,t) = -\frac{\hbar}{2m}\nabla^2\Psi(\vec x,t)+ V(\vec x)\Psi(\vec x,t)'),

  SecondaryButton(name: 'horrified3 equation',latexstring: r'\hat f(\xi) = \int_{-\infty}^\infty {f(x)e^{- 2\pi i \xi x}\mathrm{d}x}'),


  SecondaryButton(name: 'horrified5 equation',latexstring: r'\left\{\begin{array}{l}\nabla\cdot\vec{D} = \rho \\\nabla\cdot\vec{B} = 0 \\\nabla\times\vec{E} = -\frac{\partial\vec{B}}{\partial t} \\\nabla\times\vec{H} = \vec{J}_f + \frac{\partial\vec{D}}{\partial t} \end{array}\right.')

];
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure AdsorptionIsothermsPackage (A : AdmissibleClass) where
  langmuirIsotherm : Prop
  freundlichIsotherm : Prop
  temkinIsotherm : Prop
  betIsotherm : Prop
  langmuirClosed : langmuirIsotherm
  freundlichClosed : freundlichIsotherm
  temkinClosed : temkinIsotherm
  betClosed : betIsotherm

structure AdsorptionIsothermsEvidence (P : AdsorptionIsothermsPackage A) where
  langmuirClosed : P.langmuirIsotherm
  freundlichClosed : P.freundlichIsotherm
  temkinClosed : P.temkinIsotherm
  betClosed : P.betIsotherm

def AdsorptionIsothermsClosed (P : AdsorptionIsothermsPackage A) : Prop :=
  P.langmuirIsotherm ∧ P.freundlichIsotherm ∧ P.temkinIsotherm ∧ P.betIsotherm

theorem adsorption_isotherms_closed_from_evidence (P : AdsorptionIsothermsPackage A) (E : AdsorptionIsothermsEvidence P) :
    AdsorptionIsothermsClosed P := by
  exact And.intro E.langmuirClosed (And.intro E.freundlichClosed (And.intro E.temkinClosed E.betClosed))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
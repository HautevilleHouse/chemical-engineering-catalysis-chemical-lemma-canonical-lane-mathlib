import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure CatalysisMechanismPackage where
  adsorptionIsotherm : Prop
  surfaceReaction : Prop
  desorptionStep : Prop
  rateDeterminingStep : Prop
  turnoverFrequency : Prop

structure CatalysisMechanismEvidence (C : CatalysisMechanismPackage) where
  adsorptionIsothermClosed : C.adsorptionIsotherm
  surfaceReactionClosed : C.surfaceReaction
  desorptionStepClosed : C.desorptionStep
  rateDeterminingStepClosed : C.rateDeterminingStep
  turnoverFrequencyClosed : C.turnoverFrequency

def CatalysisMechanismClosed (C : CatalysisMechanismPackage) : Prop :=
  C.adsorptionIsotherm ∧ C.surfaceReaction ∧ C.desorptionStep ∧ C.rateDeterminingStep ∧ C.turnoverFrequency

theorem catalysis_mechanism_closed_from_evidence (C : CatalysisMechanismPackage) (E : CatalysisMechanismEvidence C) :
    CatalysisMechanismClosed C := by
  exact And.intro E.adsorptionIsothermClosed
    (And.intro E.surfaceReactionClosed
      (And.intro E.desorptionStepClosed
        (And.intro E.rateDeterminingStepClosed E.turnoverFrequencyClosed)))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
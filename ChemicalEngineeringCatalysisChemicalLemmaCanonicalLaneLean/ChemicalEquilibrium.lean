import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  massActionLaw : Prop
  equilibriumComposition : Prop
  leChatelierPrinciple : Prop
  reactionQuotient : Prop
  temperatureEffect : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  massActionLawClosed : C.massActionLaw
  equilibriumCompositionClosed : C.equilibriumComposition
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  reactionQuotientClosed : C.reactionQuotient
  temperatureEffectClosed : C.temperatureEffect

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.massActionLaw ∧ C.equilibriumComposition ∧ C.leChatelierPrinciple ∧ C.reactionQuotient ∧ C.temperatureEffect

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.massActionLawClosed
    (And.intro E.equilibriumCompositionClosed
      (And.intro E.leChatelierPrincipleClosed
        (And.intro E.reactionQuotientClosed E.temperatureEffectClosed)))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
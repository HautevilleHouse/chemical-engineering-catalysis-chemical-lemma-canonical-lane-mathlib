import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure ReactionMechanismsPackage (A : AdmissibleClass) where
  elementarySteps : Prop
  rateDeterminingStep : Prop
  intermediateSpecies : Prop
  catalystRegeneration : Prop
  elementaryStepsClosed : elementarySteps
  rateDeterminingStepClosed : rateDeterminingStep
  intermediateSpeciesClosed : intermediateSpecies
  catalystRegenerationClosed : catalystRegeneration

structure ReactionMechanismsEvidence (P : ReactionMechanismsPackage A) where
  elementaryStepsClosed : P.elementarySteps
  rateDeterminingStepClosed : P.rateDeterminingStep
  intermediateSpeciesClosed : P.intermediateSpecies
  catalystRegenerationClosed : P.catalystRegeneration

def ReactionMechanismsClosed (P : ReactionMechanismsPackage A) : Prop :=
  P.elementarySteps ∧ P.rateDeterminingStep ∧ P.intermediateSpecies ∧ P.catalystRegeneration

theorem reaction_mechanisms_closed_from_evidence (P : ReactionMechanismsPackage A) (E : ReactionMechanismsEvidence P) :
    ReactionMechanismsClosed P := by
  exact And.intro E.elementaryStepsClosed (And.intro E.rateDeterminingStepClosed (And.intro E.intermediateSpeciesClosed E.catalystRegenerationClosed))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure CatalyticKineticsPackage (A : AdmissibleClass) where
  rateLaw : Prop
  activationEnergy : Prop
  preExponentialFactor : Prop
  rateConstant : Prop
  reactionOrder : Nat
  rateLawClosed : rateLaw
  activationEnergyClosed : activationEnergy
  preExponentialFactorClosed : preExponentialFactor
  rateConstantClosed : rateConstant
  reactionOrderClosed : reactionOrder = 1

structure CatalyticKineticsEvidence (P : CatalyticKineticsPackage A) where
  rateLawClosed : P.rateLaw
  activationEnergyClosed : P.activationEnergy
  preExponentialFactorClosed : P.preExponentialFactor
  rateConstantClosed : P.rateConstant
  reactionOrderClosed : P.reactionOrder = 1

def CatalyticKineticsClosed (P : CatalyticKineticsPackage A) : Prop :=
  P.rateLaw ∧ P.activationEnergy ∧ P.preExponentialFactor ∧ P.rateConstant ∧ P.reactionOrder = 1

theorem catalytic_kinetics_closed_from_evidence (P : CatalyticKineticsPackage A) (E : CatalyticKineticsEvidence P) :
    CatalyticKineticsClosed P := by
  exact And.intro E.rateLawClosed (And.intro E.activationEnergyClosed (And.intro E.preExponentialFactorClosed (And.intro E.rateConstantClosed E.reactionOrderClosed)))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
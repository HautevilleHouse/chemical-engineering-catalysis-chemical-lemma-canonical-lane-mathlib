import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  rateExpression : Type
  activationEnergy : Prop
  preExponentialFactor : Prop
  reactionOrder : Prop
  rateExpressionTerm : rateExpression
  activationEnergyClosed : activationEnergy
  preExponentialFactorClosed : preExponentialFactor
  reactionOrderClosed : reactionOrder

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  activationEnergyClosed : K.activationEnergy
  preExponentialFactorClosed : K.preExponentialFactor
  reactionOrderClosed : K.reactionOrder

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.activationEnergy ∧ K.preExponentialFactor ∧ K.reactionOrder

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage) (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.activationEnergyClosed (And.intro E.preExponentialFactorClosed E.reactionOrderClosed)

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
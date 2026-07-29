import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationEnergy : Prop
  rateConstant : Prop
  reactionOrder : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  rateConstantClosed : R.rateConstant
  reactionOrderClosed : R.reactionOrder
  temperatureDependenceClosed : R.temperatureDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.rateConstant ∧ R.reactionOrder ∧ R.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.rateConstantClosed
        (And.intro E.reactionOrderClosed E.temperatureDependenceClosed)))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
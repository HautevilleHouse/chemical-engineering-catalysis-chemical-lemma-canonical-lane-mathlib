import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure ThermodynamicEquilibriumPackage (A : AdmissibleClass) where
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  reactionQuotient : Prop
  vanHoffEquation : Prop
  gibbsFreeEnergyClosed : gibbsFreeEnergy
  equilibriumConstantClosed : equilibriumConstant
  reactionQuotientClosed : reactionQuotient
  vanHoffEquationClosed : vanHoffEquation

structure ThermodynamicEquilibriumEvidence (P : ThermodynamicEquilibriumPackage A) where
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  equilibriumConstantClosed : P.equilibriumConstant
  reactionQuotientClosed : P.reactionQuotient
  vanHoffEquationClosed : P.vanHoffEquation

def ThermodynamicEquilibriumClosed (P : ThermodynamicEquilibriumPackage A) : Prop :=
  P.gibbsFreeEnergy ∧ P.equilibriumConstant ∧ P.reactionQuotient ∧ P.vanHoffEquation

theorem thermodynamic_equilibrium_closed_from_evidence (P : ThermodynamicEquilibriumPackage A) (E : ThermodynamicEquilibriumEvidence P) :
    ThermodynamicEquilibriumClosed P := by
  exact And.intro E.gibbsFreeEnergyClosed (And.intro E.equilibriumConstantClosed (And.intro E.reactionQuotientClosed E.vanHoffEquationClosed))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
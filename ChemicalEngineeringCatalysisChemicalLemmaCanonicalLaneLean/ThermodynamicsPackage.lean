import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Prop
  enthalpyEntropyBalance : Prop
  equilibriumConstant : Prop
  temperatureDependence : Prop
  gibbsFreeEnergyClosed : gibbsFreeEnergy
  enthalpyEntropyBalanceClosed : enthalpyEntropyBalance
  equilibriumConstantClosed : equilibriumConstant
  temperatureDependenceClosed : temperatureDependence

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyEntropyBalanceClosed : T.enthalpyEntropyBalance
  equilibriumConstantClosed : T.equilibriumConstant
  temperatureDependenceClosed : T.temperatureDependence

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpyEntropyBalance ∧ T.equilibriumConstant ∧ T.temperatureDependence

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed (And.intro E.enthalpyEntropyBalanceClosed (And.intro E.equilibriumConstantClosed E.temperatureDependenceClosed))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
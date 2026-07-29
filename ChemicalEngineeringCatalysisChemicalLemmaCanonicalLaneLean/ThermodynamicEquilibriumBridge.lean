import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Type u
  equilibriumConstant : Type v
  enthalpyChange : Prop
  entropyChange : Prop
  temperatureDependence : Prop
  enthalpyChangeClosed : enthalpyChange
  entropyChangeClosed : entropyChange
  temperatureDependenceClosed : temperatureDependence

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  temperatureDependenceClosed : T.temperatureDependence

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.enthalpyChange ∧ T.entropyChange ∧ T.temperatureDependence

theorem thermodynamic_equilibrium_closed_from_evidence
    (T : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T := by
  exact And.intro E.enthalpyChangeClosed
    (And.intro E.entropyChangeClosed E.temperatureDependenceClosed)

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse

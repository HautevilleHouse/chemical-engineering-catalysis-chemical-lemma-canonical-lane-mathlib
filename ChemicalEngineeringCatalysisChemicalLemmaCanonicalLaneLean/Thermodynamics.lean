import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure ThermodynamicsPackage where
  enthalpyChange : Prop
  entropyChange : Prop
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  vanHoffEquation : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  vanHoffEquationClosed : T.vanHoffEquation

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.enthalpyChange ∧ T.entropyChange ∧ T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.vanHoffEquation

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.enthalpyChangeClosed
    (And.intro E.entropyChangeClosed
      (And.intro E.gibbsFreeEnergyClosed
        (And.intro E.equilibriumConstantClosed E.vanHoffEquationClosed)))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
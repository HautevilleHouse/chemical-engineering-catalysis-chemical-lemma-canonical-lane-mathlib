import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  waveFunction : Prop
  hamiltonianOperator : Prop
  orbitalEnergy : Prop
  symmetryAdaptation : Prop
  frontierOrbitalTheory : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  waveFunctionClosed : M.waveFunction
  hamiltonianOperatorClosed : M.hamiltonianOperator
  orbitalEnergyClosed : M.orbitalEnergy
  symmetryAdaptationClosed : M.symmetryAdaptation
  frontierOrbitalTheoryClosed : M.frontierOrbitalTheory

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.waveFunction ∧ M.hamiltonianOperator ∧ M.orbitalEnergy ∧ M.symmetryAdaptation ∧ M.frontierOrbitalTheory

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.waveFunctionClosed
    (And.intro E.hamiltonianOperatorClosed
      (And.intro E.orbitalEnergyClosed
        (And.intro E.symmetryAdaptationClosed E.frontierOrbitalTheoryClosed)))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
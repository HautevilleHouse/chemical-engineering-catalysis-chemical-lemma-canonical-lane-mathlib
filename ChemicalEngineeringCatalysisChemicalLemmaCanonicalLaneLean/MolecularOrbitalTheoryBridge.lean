import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure MolecularOrbitalPackage where
  orbitalEnergy : Type u
  waveFunction : Type v
  hybridization : Prop
  frontierOrbitalGap : Prop
  dOrbitalParticipation : Prop
  hybridizationClosed : hybridization
  frontierOrbitalGapClosed : frontierOrbitalGap
  dOrbitalParticipationClosed : dOrbitalParticipation

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  hybridizationClosed : M.hybridization
  frontierOrbitalGapClosed : M.frontierOrbitalGap
  dOrbitalParticipationClosed : M.dOrbitalParticipation

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.hybridization ∧ M.frontierOrbitalGap ∧ M.dOrbitalParticipation

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage)
    (E : MolecularOrbitalEvidence M) : MolecularOrbitalClosed M := by
  exact And.intro E.hybridizationClosed
    (And.intro E.frontierOrbitalGapClosed E.dOrbitalParticipationClosed)

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  orbitalHybridization : Prop
  frontierOrbitalTheory : Prop
  dBandCenter : Prop
  adsorptionEnergyTrend : Prop
  orbitalHybridizationClosed : orbitalHybridization
  frontierOrbitalTheoryClosed : frontierOrbitalTheory
  dBandCenterClosed : dBandCenter
  adsorptionEnergyTrendClosed : adsorptionEnergyTrend

structure MolecularOrbitalEvidence (M : MolecularOrbitalTheoryPackage) where
  orbitalHybridizationClosed : M.orbitalHybridization
  frontierOrbitalTheoryClosed : M.frontierOrbitalTheory
  dBandCenterClosed : M.dBandCenter
  adsorptionEnergyTrendClosed : M.adsorptionEnergyTrend

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.orbitalHybridization ∧ M.frontierOrbitalTheory ∧ M.dBandCenter ∧ M.adsorptionEnergyTrend

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalEvidence M) : MolecularOrbitalTheoryClosed M := by
  exact And.intro E.orbitalHybridizationClosed (And.intro E.frontierOrbitalTheoryClosed (And.intro E.dBandCenterClosed E.adsorptionEnergyTrendClosed))

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
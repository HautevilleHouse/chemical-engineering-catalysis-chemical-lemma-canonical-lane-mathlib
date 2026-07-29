import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean

structure Molecule where
  atoms : Type
  bonds : Type
  structure : Prop

structure CatalysisAdmittedObject where
  molecule : Molecule
  catalystSurface : Type
  reactionKineticsModel : Prop
  adsorptionIsotherm : Prop
  transitionStateGeometry : Prop
  conclusion : reactionKineticsModel ∧ adsorptionIsotherm ∧ transitionStateGeometry

structure CatalysisEndgameState where
  object : CatalysisAdmittedObject

def CatalysisWitnessClosed (O : CatalysisAdmittedObject) : Prop :=
  O.conclusion

end ChemicalEngineeringCatalysisChemicalLemmaCanonicalLaneLean
end HautevilleHouse
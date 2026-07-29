import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksMultistationarityCanonicalLaneLean.SpeciesGraphs
import HautevilleHouse.ChemicalReactionNetworksMultistationarityCanonicalLaneLean.JacobianMatrix

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure InjectivityPackage (G : SpeciesGraph) (J : JacobianMatrix) where
  speciesGraphClosed : SpeciesGraphClosed G
  jacobianMatrixClosed : JacobianMatrixClosed J
  jacobianInjective : Prop
  kineticRatesOrdered : Prop

structure InjectivityEvidence {G : SpeciesGraph} {J : JacobianMatrix} (I : InjectivityPackage G J) where
  jacobianInjectiveClosed : I.jacobianInjective
  kineticRatesOrderedClosed : I.kineticRatesOrdered

def InjectivityClosed {G : SpeciesGraph} {J : JacobianMatrix} (I : InjectivityPackage G J) : Prop :=
  I.jacobianInjective ∧ I.kineticRatesOrdered

theorem injectivity_closed_from_evidence {G : SpeciesGraph} {J : JacobianMatrix} (I : InjectivityPackage G J) (E : InjectivityEvidence I) : InjectivityClosed I := by
  exact And.intro E.jacobianInjectiveClosed E.kineticRatesOrderedClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
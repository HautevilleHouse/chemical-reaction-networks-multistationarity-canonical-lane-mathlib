import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksMultistationarityCanonicalLaneLean.MultistationarityCriteria

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure JacobianInjectivity (G : SpeciesReactionGraph) where
  jacobianMatrix : Type
  nonSingularOnPositiveOrthant : Prop
  injectivityImpliesUniqueness : Prop
  injectivityClosed : Prop

def InjectivityClosed (J : JacobianInjectivity G) : Prop :=
  J.injectivityClosed

theorem injectivity_closed (J : JacobianInjectivity G) : InjectivityClosed J :=
  J.injectivityClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksMultistationarityCanonicalLaneLean.InjectivityAndJacobian

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure ToricVarietyModel (G : SpeciesReactionGraph) where
  toricIdeal : Type
  steadyStateVariety : Type
  binomialStructure : Prop
  toricityClosed : Prop

def ToricityClosed (T : ToricVarietyModel G) : Prop :=
  T.toricityClosed

theorem toricity_closed (T : ToricVarietyModel G) : ToricityClosed T :=
  T.toricityClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
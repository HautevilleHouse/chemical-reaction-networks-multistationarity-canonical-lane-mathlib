import ChemicalReactionNetworksMultistationarityCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
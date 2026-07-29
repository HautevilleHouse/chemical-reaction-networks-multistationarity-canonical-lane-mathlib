import ChemicalReactionNetworksMultistationarityCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure AdmissibleClass where
  object : ChemicalReactionNetworkAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChemicalReactionNetworkWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse

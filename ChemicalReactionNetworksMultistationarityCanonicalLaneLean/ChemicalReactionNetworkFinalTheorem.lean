import ChemicalReactionNetworksMultistationarityCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

def ConstrainedCRNClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_crn_endgame (A : AdmissibleClass) : ConstrainedCRNClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
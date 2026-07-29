import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure CRNAdmittedObject where
  species : Type
  reactions : List (List Nat × List Nat)
  rateConstants : List ℝ
  consistencyCondition : Prop
  conclusion : consistencyCondition

def CRNAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
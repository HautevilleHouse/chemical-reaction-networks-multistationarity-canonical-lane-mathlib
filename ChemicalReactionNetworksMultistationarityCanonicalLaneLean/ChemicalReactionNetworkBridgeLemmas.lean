import ChemicalReactionNetworksMultistationarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | .CRNAdmittedObject o => o.consistencyCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  match A.object with
  | .CRNAdmittedObject o => o.conclusion

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
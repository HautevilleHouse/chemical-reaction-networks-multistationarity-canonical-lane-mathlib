import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CRNObject where
  species : Type
  reactions : Type
  stoichiometryMatrix : Prop
  rateConstants : Prop
  concentrationVector : Prop
  multistationarity : Prop

structure AdmissibleObject where
  object : CRNObject
  conclusion : object.multistationarity

def CRNWitnessClosed (O : AdmissibleObject) : Prop :=
  O.object.multistationarity

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
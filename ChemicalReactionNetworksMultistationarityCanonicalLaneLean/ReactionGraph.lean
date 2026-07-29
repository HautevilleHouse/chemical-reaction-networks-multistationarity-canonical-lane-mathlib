import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure ReactionGraph where
  species : Type u
  reactions : Type v
  stoichiometricMatrix : reactions → species → ℤ
  incidenceMap : reactions → species → ℤ
  connectivity : Prop
  connectivityTerm : connectivity

structure ReactionGraphEvidence (G : ReactionGraph) where
  connectivityClosed : G.connectivity

def ReactionGraphClosed (G : ReactionGraph) : Prop :=
  G.connectivity

theorem reaction_graph_closed_from_evidence (G : ReactionGraph) (E : ReactionGraphEvidence G) :
    ReactionGraphClosed G := by
  exact E.connectivityClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse

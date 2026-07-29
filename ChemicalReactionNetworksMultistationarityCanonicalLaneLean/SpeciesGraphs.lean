import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure SpeciesGraph where
  vertices : Type u
  edges : Set (vertices × vertices)
  inputOutputMap : vertices → vertices
  connected : Prop
  bipartite : Prop

structure SpeciesGraphEvidence (G : SpeciesGraph) where
  connectedClosed : G.connected
  bipartiteClosed : G.bipartite

def SpeciesGraphClosed (G : SpeciesGraph) : Prop :=
  G.connected ∧ G.bipartite

theorem species_graph_closed_from_evidence (G : SpeciesGraph) (E : SpeciesGraphEvidence G) : SpeciesGraphClosed G := by
  exact And.intro E.connectedClosed E.bipartiteClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
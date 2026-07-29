import ChemicalReactionNetworksMultistationarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure SpeciesReactionGraph (S : Type) where
  vertices : S → Prop
  edges : S → S → Prop
  edgeLabel : S → S → ℝ
  incidenceMatrix : List (List ℝ)

def graphLaplacian (G : SpeciesReactionGraph S) : Matrix S S ℝ where
  

theorem graph_laplacian_positive_semidefinite (G : SpeciesReactionGraph S) :
  (∀ v : S, G.vertices v → 0 ≤ (G.graphLaplacian v v).val) := by
  intro v hv
  simp

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
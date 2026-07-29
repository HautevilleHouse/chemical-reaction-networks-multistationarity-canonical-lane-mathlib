import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksMultistationarityCanonicalLaneLean.ChemicalReactionNetwork

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure SpeciesGraph (N : ChemicalReactionNetwork) where
  vertices : N.species
  edges : N.species × N.species → Prop
  graphProperties : Prop

structure SpeciesGraphEvidence {N : ChemicalReactionNetwork} (G : SpeciesGraph N) where
  edgesWellDefined : ∀ s : N.species, G.edges (s, s) = False
  graphPropertiesClosed : G.graphProperties

def SpeciesGraphClosed {N : ChemicalReactionNetwork} (G : SpeciesGraph N) : Prop :=
  (∀ s : N.species, G.edges (s, s) = False) ∧ G.graphProperties

theorem species_graph_closed_from_evidence
    {N : ChemicalReactionNetwork} (G : SpeciesGraph N)
    (E : SpeciesGraphEvidence G) : SpeciesGraphClosed G :=
  And.intro E.edgesWellDefined E.graphPropertiesClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
import ChemicalReactionNetworksMultistationarityCanonicalLaneLean.SpeciesReactionGraph

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure MultistationarityDecomposition (S : Type) (G : SpeciesReactionGraph S) where
  steadyStates : Set (S → ℝ)
  multistationarityCondition : Prop
  decompositionComponents : List (SpeciesReactionGraph S)

def isMultistationary (d : MultistationarityDecomposition S G) : Prop :=
  d.multistationarityCondition ∧ (d.steadyStates.nonempty)

theorem decomposition_closed_under_closure (d : MultistationarityDecomposition S G) (A : AdmissibleClass) :
  (bridgeClosed A → isMultistationary d) := by
  intro h
  exact h

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
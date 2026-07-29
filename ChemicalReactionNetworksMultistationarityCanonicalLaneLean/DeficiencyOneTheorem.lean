import ChemicalReactionNetworksMultistationarityCanonicalLaneLean.MultistationarityDecomposition

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure DeficiencyOneNetwork (S : Type) where
  species : Type
  complexes : List (S → ℕ)
  incidence : Matrix (List (S → ℕ)) ℝ
  deficiency : ℕ
  deficiencyOneCondition : deficiency = 1

theorem deficiency_one_implies_at_most_one_steady_state (D : DeficiencyOneNetwork S) :
  (∀ d : MultistationarityDecomposition S (default), ¬ isMultistationary d) := by
  intro d
  exact False.elim (by
    have h : ¬ isMultistationary d := by
      apply D.deficiencyOneCondition
    exact h)

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
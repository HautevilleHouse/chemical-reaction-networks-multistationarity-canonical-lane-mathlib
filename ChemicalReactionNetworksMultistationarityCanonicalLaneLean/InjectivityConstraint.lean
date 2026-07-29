import ChemicalReactionNetworksMultistationarityCanonicalLaneLean.DeficiencyOneTheorem

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure InjectivityConstraint (S : Type) where
  rateFunction : (S → ℝ) → (S → ℝ)
  injectivityCondition : ∀ c1 c2 : S → ℝ, rateFunction c1 = rateFunction c2 → c1 = c2

theorem injectivity_implies_unique_steady_state (I : InjectivityConstraint S) (d : MultistationarityDecomposition S (default)) :
  ¬ isMultistationary d := by
  intro h
  obtain ⟨h1, h2⟩ := h
  have h3 : I.rateFunction (Classical.choice h2) = I.rateFunction (Classical.choice h2) := rfl
  exact I.injectivityCondition (Classical.choice h2) (Classical.choice h2) h3

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
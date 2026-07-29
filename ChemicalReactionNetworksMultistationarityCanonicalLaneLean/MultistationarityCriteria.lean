import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksMultistationarityCanonicalLaneLean.ChemicalReactionNetwork

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure MultistationarityCriteria (N : ChemicalReactionNetwork) where
  deficiency : ℕ
  hasMultistationarity : Prop
  deficiencyZeroImpliesMonostationarity : deficiency = 0 → ¬hasMultistationarity

structure MultistationarityEvidence {N : ChemicalReactionNetwork} (C : MultistationarityCriteria N) where
  deficiencyComputed : C.deficiency = 0 ∨ C.deficiency = 1 ∨ C.deficiency ≥ 2
  multistationarityClosed : C.hasMultistationarity ↔ C.deficiency ≥ 1

def MultistationarityCriteriaClosed {N : ChemicalReactionNetwork} (C : MultistationarityCriteria N) : Prop :=
  (C.deficiency = 0 ∨ C.deficiency = 1 ∨ C.deficiency ≥ 2) ∧ (C.hasMultistationarity ↔ C.deficiency ≥ 1)

theorem multistationarity_criteria_closed_from_evidence
    {N : ChemicalReactionNetwork} (C : MultistationarityCriteria N)
    (E : MultistationarityEvidence C) : MultistationarityCriteriaClosed C :=
  And.intro E.deficiencyComputed E.multistationarityClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
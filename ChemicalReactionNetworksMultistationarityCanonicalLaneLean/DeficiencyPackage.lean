import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure DeficiencyPackage (G : ReactionGraph) where
  rank : ℕ
  deficiency : ℕ
  deficiencyZero : Prop
  deficiencyOne : Prop
  rankCondition : G.reactions → G.species → ℤ
  deficiencyZeroTerm : deficiencyZero
  deficiencyOneTerm : deficiencyOne

structure DeficiencyEvidence (G : ReactionGraph) (D : DeficiencyPackage G) where
  deficiencyZeroClosed : D.deficiencyZero
  deficiencyOneClosed : D.deficiencyOne

def DeficiencyClosed (G : ReactionGraph) (D : DeficiencyPackage G) : Prop :=
  D.deficiencyZero ∧ D.deficiencyOne

theorem deficiency_closed_from_evidence (G : ReactionGraph) (D : DeficiencyPackage G) (E : DeficiencyEvidence G D) :
    DeficiencyClosed G D := by
  exact And.intro E.deficiencyZeroClosed E.deficiencyOneClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse

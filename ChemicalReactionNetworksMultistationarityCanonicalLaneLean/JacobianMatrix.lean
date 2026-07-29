import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure JacobianMatrix where
  nSpecies : Nat
  matrix : Matrix (Fin nSpecies) (Fin nSpecies) ℝ
  diagonalNegative : Prop
  signPatternStable : Prop

structure JacobianMatrixEvidence (J : JacobianMatrix) where
  diagonalNegativeClosed : J.diagonalNegative
  signPatternStableClosed : J.signPatternStable

def JacobianMatrixClosed (J : JacobianMatrix) : Prop :=
  J.diagonalNegative ∧ J.signPatternStable

theorem jacobian_matrix_closed_from_evidence (J : JacobianMatrix) (E : JacobianMatrixEvidence J) : JacobianMatrixClosed J := by
  exact And.intro E.diagonalNegativeClosed E.signPatternStableClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
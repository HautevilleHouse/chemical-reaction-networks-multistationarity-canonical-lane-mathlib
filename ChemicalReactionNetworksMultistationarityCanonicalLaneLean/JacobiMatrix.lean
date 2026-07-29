import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksMultistationarityCanonicalLaneLean.ChemicalReactionNetwork

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure JacobiMatrix (N : ChemicalReactionNetwork) where
  matrixType : Type
  entries : N.species → N.species → ℝ
  jacobianProperties : Prop

structure JacobiMatrixEvidence {N : ChemicalReactionNetwork} (J : JacobiMatrix N) where
  entriesWellDefined : ∀ s t : N.species, J.entries s t = 0 ∨ J.entries s t ≠ 0
  jacobianPropertiesClosed : J.jacobianProperties

def JacobiMatrixClosed {N : ChemicalReactionNetwork} (J : JacobiMatrix N) : Prop :=
  (∀ s t : N.species, J.entries s t = 0 ∨ J.entries s t ≠ 0) ∧ J.jacobianProperties

theorem jacobi_matrix_closed_from_evidence
    {N : ChemicalReactionNetwork} (J : JacobiMatrix N)
    (E : JacobiMatrixEvidence J) : JacobiMatrixClosed J :=
  And.intro E.entriesWellDefined E.jacobianPropertiesClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
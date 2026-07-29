import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksMultistationarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure DeficiencyTheoryPackage (O : AdmissibleObject) where
  deficiency : ℕ
  numberSpecies : ℕ
  numberReactions : ℕ
  numberConnectedComponents : ℕ
  deficiencyFormula : numberSpecies - numberReactions + numberConnectedComponents = deficiency
  deficiencyZero : deficiency = 0
  weakReversibility : Prop
  detailedBalance : Prop
  deficiencyZeroImpliesUniqueSteadyState : deficiencyZero → weakReversibility → ¬ object.multistationarity

structure DeficiencyTheoryEvidence (O : AdmissibleObject) (D : DeficiencyTheoryPackage O) where
  deficiencyFormulaClosed : D.deficiencyFormula
  deficiencyZeroClosed : D.deficiencyZero
  weakReversibilityClosed : D.weakReversibility
  detailedBalanceClosed : D.detailedBalance
  deficiencyZeroImpliesUniqueClosed : D.deficiencyZeroImpliesUniqueSteadyState D.deficiencyZeroClosed D.weakReversibilityClosed

def DeficiencyTheoryClosed (O : AdmissibleObject) (D : DeficiencyTheoryPackage O) : Prop :=
  D.deficiencyFormula ∧ D.deficiencyZero ∧ D.weakReversibility ∧ D.detailedBalance ∧ D.deficiencyZeroImpliesUniqueSteadyState D.deficiencyZero D.weakReversibility

theorem deficiency_theory_closed_from_evidence (O : AdmissibleObject) (D : DeficiencyTheoryPackage O) (E : DeficiencyTheoryEvidence O D) : DeficiencyTheoryClosed O D := by
  exact And.intro E.deficiencyFormulaClosed (And.intro E.deficiencyZeroClosed (And.intro E.weakReversibilityClosed (And.intro E.detailedBalanceClosed E.deficiencyZeroImpliesUniqueClosed)))

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
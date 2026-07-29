import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksMultistationarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure MultistationarityCharacterizationPackage (O : AdmissibleObject) where
  rateConstantsReal : Prop
  stoichiometricSubspace : Prop
  positiveSteadyStates : ℕ
  rankCondition : Prop
  signPatterns : Prop
  mixedVolume : Prop
  multistationarityCriterion : positiveSteadyStates > 1 ↔ (rateConstantsReal ∧ rankCondition ∧ signPatterns ∧ mixedVolume)

structure MultistationarityCharacterizationEvidence (O : AdmissibleObject) (M : MultistationarityCharacterizationPackage O) where
  rateConstantsRealClosed : M.rateConstantsReal
  rankConditionClosed : M.rankCondition
  signPatternsClosed : M.signPatterns
  mixedVolumeClosed : M.mixedVolume
  multistationarityCriterionClosed : M.multistationarityCriterion

def MultistationarityCharacterizationClosed (O : AdmissibleObject) (M : MultistationarityCharacterizationPackage O) : Prop :=
  M.rateConstantsReal ∧ M.rankCondition ∧ M.signPatterns ∧ M.mixedVolume ∧ M.multistationarityCriterion

theorem multistationarity_characterization_closed_from_evidence (O : AdmissibleObject) (M : MultistationarityCharacterizationPackage O) (E : MultistationarityCharacterizationEvidence O M) : MultistationarityCharacterizationClosed O M := by
  exact And.intro E.rateConstantsRealClosed (And.intro E.rankConditionClosed (And.intro E.signPatternsClosed (And.intro E.mixedVolumeClosed E.multistationarityCriterionClosed)))

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
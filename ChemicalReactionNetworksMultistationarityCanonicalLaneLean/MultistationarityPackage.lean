import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure MultistationarityPackage {G : ReactionGraph} {D : DeficiencyPackage G} {S : SpeciesFormationPackage D}
    (V : SteadyStateVarietyPackage G D S) where
  multiplePositiveSteadyStates : Prop
  discriminantVanishes : Prop
  parameterConditions : SpeciesFormationRates → Prop
  multiplePositiveSteadyStatesTerm : multiplePositiveSteadyStates
  discriminantVanishesTerm : discriminantVanishes
  parameterConditionsTerm : ∀ (κ : SpeciesFormationRates), parameterConditions κ

structure MultistationarityEvidence {G : ReactionGraph} {D : DeficiencyPackage G} {S : SpeciesFormationPackage D}
    {V : SteadyStateVarietyPackage G D S} (M : MultistationarityPackage V) where
  multiplePositiveSteadyStatesClosed : M.multiplePositiveSteadyStates
  discriminantVanishesClosed : M.discriminantVanishes
  parameterConditionsClosed : ∀ (κ : SpeciesFormationRates), M.parameterConditions κ

def MultistationarityClosed {G : ReactionGraph} {D : DeficiencyPackage G} {S : SpeciesFormationPackage D}
    {V : SteadyStateVarietyPackage G D S} (M : MultistationarityPackage V) : Prop :=
  M.multiplePositiveSteadyStates ∧ M.discriminantVanishes ∧ ∀ (κ : SpeciesFormationRates), M.parameterConditions κ

theorem multistationarity_closed_from_evidence {G : ReactionGraph} {D : DeficiencyPackage G} {S : SpeciesFormationPackage D}
    {V : SteadyStateVarietyPackage G D S} (M : MultistationarityPackage V) (E : MultistationarityEvidence M) :
    MultistationarityClosed M := by
  exact And.intro E.multiplePositiveSteadyStatesClosed
    (And.intro E.discriminantVanishesClosed E.parameterConditionsClosed)

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse

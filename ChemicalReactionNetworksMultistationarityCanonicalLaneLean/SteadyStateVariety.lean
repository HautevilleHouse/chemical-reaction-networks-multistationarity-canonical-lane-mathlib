import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure SteadyStateVarietyPackage {G : ReactionGraph} {D : DeficiencyPackage G} {S : SpeciesFormationPackage D} where
  polynomialEquations : Prop
  positiveSteadyStates : Prop
  parametrization : SpeciesFormationRates → ℕ
  positiveSteadyStatesNonempty : Prop
  polynomialEquationsTerm : polynomialEquations
  positiveSteadyStatesTerm : positiveSteadyStates
  positiveSteadyStatesNonemptyTerm : positiveSteadyStatesNonempty

structure SteadyStateVarietyEvidence {G : ReactionGraph} {D : DeficiencyPackage G} {S : SpeciesFormationPackage D}
    (V : SteadyStateVarietyPackage G D S) where
  polynomialEquationsClosed : V.polynomialEquations
  positiveSteadyStatesClosed : V.positiveSteadyStates
  positiveSteadyStatesNonemptyClosed : V.positiveSteadyStatesNonempty

def SteadyStateVarietyClosed {G : ReactionGraph} {D : DeficiencyPackage G} {S : SpeciesFormationPackage D}
    (V : SteadyStateVarietyPackage G D S) : Prop :=
  V.polynomialEquations ∧ V.positiveSteadyStates ∧ V.positiveSteadyStatesNonempty

theorem steady_state_variety_closed_from_evidence {G : ReactionGraph} {D : DeficiencyPackage G} {S : SpeciesFormationPackage D}
    (V : SteadyStateVarietyPackage G D S) (E : SteadyStateVarietyEvidence V) :
    SteadyStateVarietyClosed V := by
  exact And.intro E.polynomialEquationsClosed
    (And.intro E.positiveSteadyStatesClosed E.positiveSteadyStatesNonemptyClosed)

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse

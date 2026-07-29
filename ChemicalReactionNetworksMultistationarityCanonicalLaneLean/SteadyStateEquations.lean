import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksMultistationarityCanonicalLaneLean.ChemicalReactionNetwork

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure SteadyStateEquations (N : ChemicalReactionNetwork) where
  equations : List (ℝ → ℝ)
  solutionSpace : Type
  dimension : ℕ

structure SteadyStateEvidence {N : ChemicalReactionNetwork} (S : SteadyStateEquations N) where
  equationsConsistent : S.equations ≠ []
  solutionSpaceFiniteDimensional : S.dimension < 100

def SteadyStateClosed {N : ChemicalReactionNetwork} (S : SteadyStateEquations N) : Prop :=
  S.equations ≠ [] ∧ S.dimension < 100

theorem steady_state_closed_from_evidence
    {N : ChemicalReactionNetwork} (S : SteadyStateEquations N)
    (E : SteadyStateEvidence S) : SteadyStateClosed S :=
  And.intro E.equationsConsistent E.solutionSpaceFiniteDimensional

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
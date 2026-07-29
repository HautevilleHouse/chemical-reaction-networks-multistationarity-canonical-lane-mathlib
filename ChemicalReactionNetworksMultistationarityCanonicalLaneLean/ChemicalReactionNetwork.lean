import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure ChemicalReactionNetwork where
  species : Type
  reactions : List (List (species × ℕ) × List (species × ℕ))
  kinetics : Type

structure CRNEvidence (N : ChemicalReactionNetwork) where
  speciesFinite : Fintype N.species
  reactionsFinite : List.Finite N.reactions
  kineticsWellDefined : True

def CRNClosed (N : ChemicalReactionNetwork) : Prop :=
  Fintype N.species ∧ List.Finite N.reactions ∧ True

theorem crn_closed_from_evidence (N : ChemicalReactionNetwork) (E : CRNEvidence N) : CRNClosed N := by
  exact And.intro E.speciesFinite (And.intro E.reactionsFinite E.kineticsWellDefined)

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksMultistationarityCanonicalLaneLean

structure SpeciesFormationPackage {G : ReactionGraph} (D : DeficiencyPackage G) where
  elementaryFluxModes : Type u
  speciesFormationRates : Type v
  fluxBalance : Prop
  formationRateDefined : Prop
  fluxBalanceTerm : fluxBalance
  formationRateDefinedTerm : formationRateDefined

structure SpeciesFormationEvidence {G : ReactionGraph} {D : DeficiencyPackage G} (S : SpeciesFormationPackage D) where
  fluxBalanceClosed : S.fluxBalance
  formationRateDefinedClosed : S.formationRateDefined

def SpeciesFormationClosed {G : ReactionGraph} {D : DeficiencyPackage G} (S : SpeciesFormationPackage D) : Prop :=
  S.fluxBalance ∧ S.formationRateDefined

theorem species_formation_closed_from_evidence {G : ReactionGraph} {D : DeficiencyPackage G}
    (S : SpeciesFormationPackage D) (E : SpeciesFormationEvidence S) :
    SpeciesFormationClosed S := by
  exact And.intro E.fluxBalanceClosed E.formationRateDefinedClosed

end ChemicalReactionNetworksMultistationarityCanonicalLaneLean
end HautevilleHouse

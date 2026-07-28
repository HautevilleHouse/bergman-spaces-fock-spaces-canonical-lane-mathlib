import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesCanonicalLaneLean

structure BergmanProjectionPackage where
  projectionOperator : Type u
  boundedOnBergmanSpace : Prop
  orthogonalProjection : Prop

structure BergmanProjectionEvidence (P : BergmanProjectionPackage) where
  boundedOnBergmanSpaceClosed : P.boundedOnBergmanSpace
  orthogonalProjectionClosed : P.orthogonalProjection

def BergmanProjectionClosed (P : BergmanProjectionPackage) : Prop :=
  P.boundedOnBergmanSpace ∧ P.orthogonalProjection

theorem bergman_projection_closed_from_evidence (P : BergmanProjectionPackage)
    (E : BergmanProjectionEvidence P) : BergmanProjectionClosed P := by
  exact And.intro E.boundedOnBergmanSpaceClosed E.orthogonalProjectionClosed

end BergmanSpacesFockSpacesCanonicalLaneLean
end HautevilleHouse
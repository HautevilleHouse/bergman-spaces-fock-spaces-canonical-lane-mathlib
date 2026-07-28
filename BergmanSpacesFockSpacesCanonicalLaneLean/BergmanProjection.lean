import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockCanonicalLane

structure BergmanProjectionPackage {B : BergmanSpacePackage} {K : ReproducingKernelPackage B} where
  projection : B.space → B.space
  projectionBounded : Prop
  projectionIdempotent : Prop
  projectionSelfAdjoint : Prop
  projectionRangeIsBergman : Prop

structure BergmanProjectionEvidence {B : BergmanSpacePackage} {K : ReproducingKernelPackage B}
    (P : BergmanProjectionPackage B K) where
  projectionBoundedClosed : P.projectionBounded
  projectionIdempotentClosed : P.projectionIdempotent
  projectionSelfAdjointClosed : P.projectionSelfAdjoint
  projectionRangeIsBergmanClosed : P.projectionRangeIsBergman

def BergmanProjectionClosed {B : BergmanSpacePackage} {K : ReproducingKernelPackage B}
    (P : BergmanProjectionPackage B K) : Prop :=
  P.projectionBounded ∧ P.projectionIdempotent ∧ P.projectionSelfAdjoint ∧ P.projectionRangeIsBergman

theorem bergman_projection_closed_from_evidence {B : BergmanSpacePackage} {K : ReproducingKernelPackage B}
    (P : BergmanProjectionPackage B K) (E : BergmanProjectionEvidence P) : BergmanProjectionClosed P := by
  exact And.intro E.projectionBoundedClosed (And.intro E.projectionIdempotentClosed
    (And.intro E.projectionSelfAdjointClosed E.projectionRangeIsBergmanClosed))

end BergmanFockCanonicalLane
end HautevilleHouse
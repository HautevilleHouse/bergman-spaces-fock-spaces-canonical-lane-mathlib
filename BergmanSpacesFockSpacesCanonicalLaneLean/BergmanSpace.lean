import canonicalLaneMathlib.AdmissibleClass

/-!
# Bergman Space Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesCanonicalLaneLean

structure BergmanSpacePackage (Ω : Type) [TopologicalSpace Ω] [ComplexManifold Ω] where
  areaMeasure : Type
  holomorphicFunctions : Type
  squareIntegrable : Prop
  completeness : Prop
  reproducingKernel : Prop

structure BergmanSpaceEvidence {Ω : Type} [TopologicalSpace Ω] [ComplexManifold Ω] (B : BergmanSpacePackage Ω) where
  squareIntegrableClosed : B.squareIntegrable
  completenessClosed : B.completeness
  reproducingKernelClosed : B.reproducingKernel

def BergmanSpaceClosed {Ω : Type} [TopologicalSpace Ω] [ComplexManifold Ω] (B : BergmanSpacePackage Ω) : Prop :=
  B.squareIntegrable ∧ B.completeness ∧ B.reproducingKernel

theorem bergman_space_closed_from_evidence {Ω : Type} [TopologicalSpace Ω] [ComplexManifold Ω] (B : BergmanSpacePackage Ω) (E : BergmanSpaceEvidence B) :
    BergmanSpaceClosed B := by
  exact And.intro E.squareIntegrableClosed (And.intro E.completenessClosed E.reproducingKernelClosed)

end BergmanSpacesFockSpacesCanonicalLaneLean
end HautevilleHouse
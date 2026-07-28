import canonicalLaneMathlib.AdmissibleClass

/-!
# Fock Space Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesCanonicalLaneLean

structure FockSpacePackage (n : ℕ) where
  gaussianWeight : Type
  entireFunctions : Type
  squareIntegrable : Prop
  completeness : Prop
  reproducingKernel : Prop

structure FockSpaceEvidence (F : FockSpacePackage n) where
  squareIntegrableClosed : F.squareIntegrable
  completenessClosed : F.completeness
  reproducingKernelClosed : F.reproducingKernel

def FockSpaceClosed (F : FockSpacePackage n) : Prop :=
  F.squareIntegrable ∧ F.completeness ∧ F.reproducingKernel

theorem fock_space_closed_from_evidence (F : FockSpacePackage n) (E : FockSpaceEvidence F) :
    FockSpaceClosed F := by
  exact And.intro E.squareIntegrableClosed (And.intro E.completenessClosed E.reproducingKernelClosed)

end BergmanSpacesFockSpacesCanonicalLaneLean
end HautevilleHouse
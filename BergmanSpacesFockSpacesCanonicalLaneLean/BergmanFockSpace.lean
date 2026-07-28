import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockCanonicalLane

structure BergmanSpacePackage where
  domain : Type
  domainDimension : ℕ
  weight : ℝ
  space : Type  -- L^2 space of analytic functions
  norm : space → ℝ
  innerProduct : space → space → ℂ
  completeness : Prop
  analyticContinuation : Prop

structure BergmanSpaceEvidence (B : BergmanSpacePackage) where
  completenessClosed : B.completeness
  analyticContinuationClosed : B.analyticContinuation

def BergmanSpaceClosed (B : BergmanSpacePackage) : Prop :=
  B.completeness ∧ B.analyticContinuation

theorem bergman_space_closed_from_evidence (B : BergmanSpacePackage) (E : BergmanSpaceEvidence B) :
    BergmanSpaceClosed B := by
  exact And.intro E.completenessClosed E.analyticContinuationClosed

structure FockSpacePackage where
  domain : Type
  weight : ℝ
  space : Type  -- Fock space
  norm : space → ℝ
  innerProduct : space → space → ℂ
  completeness : Prop
  analyticContinuation : Prop

structure FockSpaceEvidence (F : FockSpacePackage) where
  completenessClosed : F.completeness
  analyticContinuationClosed : F.analyticContinuation

def FockSpaceClosed (F : FockSpacePackage) : Prop :=
  F.completeness ∧ F.analyticContinuation

theorem fock_space_closed_from_evidence (F : FockSpacePackage) (E : FockSpaceEvidence F) :
    FockSpaceClosed F := by
  exact And.intro E.completenessClosed E.analyticContinuationClosed

end BergmanFockCanonicalLane
end HautevilleHouse
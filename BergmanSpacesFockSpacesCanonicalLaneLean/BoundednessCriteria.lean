import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesCanonicalLaneLean

structure BoundednessCriteriaPackage where
  toeplitzOperator : Type u
  symbol : Type v
  boundednessCondition : Prop
  essentialRange : Prop

structure BoundednessCriteriaEvidence (B : BoundednessCriteriaPackage) where
  boundednessConditionClosed : B.boundednessCondition
  essentialRangeClosed : B.essentialRange

def BoundednessCriteriaClosed (B : BoundednessCriteriaPackage) : Prop :=
  B.boundednessCondition ∧ B.essentialRange

theorem boundedness_criteria_closed_from_evidence (B : BoundednessCriteriaPackage) (E : BoundednessCriteriaEvidence B) : BoundednessCriteriaClosed B := by
  exact And.intro E.boundednessConditionClosed E.essentialRangeClosed

end BergmanSpacesFockSpacesCanonicalLaneLean
end HautevilleHouse
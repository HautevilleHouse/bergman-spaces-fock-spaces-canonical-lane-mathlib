import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesCanonicalLaneLean

structure WeightedBergman where
  domain : Type u
  weight : domain → ℝ
  weightedMeasure : domain → Prop
  analyticFunctions : Type v
  norm : analyticFunctions → ℝ

structure WeightedBergmanEvidence (W : WeightedBergman) where
  weightPositive : ∀ x, W.weight x > 0
  measureDefined : W.weightedMeasure
  analyticClosed : W.analyticFunctions
  normDefined : W.norm

def WeightedBergmanClosed (W : WeightedBergman) : Prop :=
  (∀ x, W.weight x > 0) ∧ W.weightedMeasure ∧ W.analyticFunctions ∧ W.norm

theorem weighted_bergman_closed_from_evidence (W : WeightedBergman) (E : WeightedBergmanEvidence W) : WeightedBergmanClosed W := by
  exact And.intro E.weightPositive (And.intro E.measureDefined (And.intro E.analyticClosed E.normDefined))

end BergmanSpacesFockSpacesCanonicalLaneLean
end HautevilleHouse
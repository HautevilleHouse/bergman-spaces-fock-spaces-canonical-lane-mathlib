import canonicalLaneMathlib.AdmissibleClass

/-!
# Toeplitz Operator Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesCanonicalLaneLean

structure ToeplitzOperatorPackage (B : BergmanSpacePackage Ω) where
  symbol : Type
  toepOperator : Type
  boundedness : Prop
  spectralProperties : Prop

structure ToeplitzOperatorEvidence {Ω : Type} [TopologicalSpace Ω] [ComplexManifold Ω] {B : BergmanSpacePackage Ω} (T : ToeplitzOperatorPackage B) where
  boundednessClosed : T.boundedness
  spectralPropertiesClosed : T.spectralProperties

def ToeplitzOperatorClosed {Ω : Type} [TopologicalSpace Ω] [ComplexManifold Ω] {B : BergmanSpacePackage Ω} (T : ToeplitzOperatorPackage B) : Prop :=
  T.boundedness ∧ T.spectralProperties

theorem toeplitz_operator_closed_from_evidence {Ω : Type} [TopologicalSpace Ω] [ComplexManifold Ω] {B : BergmanSpacePackage Ω} (T : ToeplitzOperatorPackage B) (E : ToeplitzOperatorEvidence T) :
    ToeplitzOperatorClosed T := by
  exact And.intro E.boundednessClosed E.spectralPropertiesClosed

end BergmanSpacesFockSpacesCanonicalLaneLean
end HautevilleHouse
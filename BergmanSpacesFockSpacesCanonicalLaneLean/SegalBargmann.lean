import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockCanonicalLane

structure SegalBargmannPackage {B : BergmanSpacePackage} {F : FockSpacePackage} where
  transform : B.space → F.space
  transformIsUnitary : Prop
  transformIntertwines : Prop
  transformMapsBergmanToFock : Prop

structure SegalBargmannEvidence {B : BergmanSpacePackage} {F : FockSpacePackage}
    (S : SegalBargmannPackage B F) where
  transformIsUnitaryClosed : S.transformIsUnitary
  transformIntertwinesClosed : S.transformIntertwines
  transformMapsBergmanToFockClosed : S.transformMapsBergmanToFock

def SegalBargmannClosed {B : BergmanSpacePackage} {F : FockSpacePackage}
    (S : SegalBargmannPackage B F) : Prop :=
  S.transformIsUnitary ∧ S.transformIntertwines ∧ S.transformMapsBergmanToFock

theorem segal_bargmann_closed_from_evidence {B : BergmanSpacePackage} {F : FockSpacePackage}
    (S : SegalBargmannPackage B F) (E : SegalBargmannEvidence S) : SegalBargmannClosed S := by
  exact And.intro E.transformIsUnitaryClosed (And.intro E.transformIntertwinesClosed
    E.transformMapsBergmanToFockClosed)

end BergmanFockCanonicalLane
end HautevilleHouse
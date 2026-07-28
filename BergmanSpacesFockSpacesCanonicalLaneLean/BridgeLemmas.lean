import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BergmanFockWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BergmanSpacesFockSpacesCanonicalLaneLean
end HautevilleHouse
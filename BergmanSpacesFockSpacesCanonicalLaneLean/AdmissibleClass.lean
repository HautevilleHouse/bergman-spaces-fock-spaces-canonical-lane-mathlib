import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : BergmanFockAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BergmanFockWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BergmanSpacesFockSpacesCanonicalLaneLean
end HautevilleHouse
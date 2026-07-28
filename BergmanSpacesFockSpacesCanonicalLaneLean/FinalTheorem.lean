import BergmanSpacesFockSpacesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesCanonicalLaneLean

def ConstrainedBergmanFockClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bergman_fock_endgame (A : AdmissibleClass) :
    ConstrainedBergmanFockClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BergmanSpacesFockSpacesCanonicalLaneLean
end HautevilleHouse
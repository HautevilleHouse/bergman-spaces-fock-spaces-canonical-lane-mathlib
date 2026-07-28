import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesCanonicalLaneLean

structure ReproducingKernelPackage where
  kernel : Type u
  reproducingProperty : Prop
  kernelClosedForm : Prop
  bergmanKernelExists : Prop
  fockKernelExists : Prop

structure ReproducingKernelEvidence (R : ReproducingKernelPackage) where
  reproducingPropertyClosed : R.reproducingProperty
  kernelClosedFormClosed : R.kernelClosedForm
  bergmanKernelExistsClosed : R.bergmanKernelExists
  fockKernelExistsClosed : R.fockKernelExists

def ReproducingKernelClosed (R : ReproducingKernelPackage) : Prop :=
  R.reproducingProperty ∧ R.kernelClosedForm ∧ R.bergmanKernelExists ∧ R.fockKernelExists

theorem reproducing_kernel_closed_from_evidence (R : ReproducingKernelPackage) (E : ReproducingKernelEvidence R) : ReproducingKernelClosed R := by
  exact And.intro E.reproducingPropertyClosed (And.intro E.kernelClosedFormClosed (And.intro E.bergmanKernelExistsClosed E.fockKernelExistsClosed))

end BergmanSpacesFockSpacesCanonicalLaneLean
end HautevilleHouse
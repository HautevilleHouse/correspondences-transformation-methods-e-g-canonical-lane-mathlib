import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

def gateClosed (A : EGAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : EGAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
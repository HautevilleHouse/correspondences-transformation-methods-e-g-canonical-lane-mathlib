import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CorrespondenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse

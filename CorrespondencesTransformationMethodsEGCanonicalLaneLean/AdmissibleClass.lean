import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure CorrespondenceObject where
  sourceSpace : Type u
  targetSpace : Type v
  transformation : sourceSpace → targetSpace
  correspondenceCondition : Prop
  derivedData : Prop

structure AdmissibleClass where
  object : CorrespondenceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CorrespondenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
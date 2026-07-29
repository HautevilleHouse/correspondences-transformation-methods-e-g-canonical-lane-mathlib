import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure CorrespondenceAdmittedObject where
  sourceSpace : Type u
  targetSpace : Type v
  mapping : sourceSpace → targetSpace
  propertyPreserved : Prop
  conclusion : propertyPreserved

define AdmissibleClass where
  object : CorrespondenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
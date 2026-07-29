import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure CorrespondenceTransformationObject where
  sourceSpace : Type u
  targetSpace : Type v
  corespondenceType : String
  transformationData : String
  endpointVerified : Prop
  conclusion : endpointVerified

def CorrespondenceWitnessClosed (O : CorrespondenceTransformationObject) : Prop :=
  O.endpointVerified

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
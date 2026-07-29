import HautevilleHouse.CorrespondencesTransformationMethodsEGCanonicalLaneLean.CorrespondenceTransformation

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure EndpointClassificationPackage {C : CorrespondenceTransformationPackage} (Z : C.target) where
  targetObject : CorrespondenceObject
  endpointMatches : Prop
  endpointTransformation : targetObject.transformation → Z

def EndpointClassificationClosed {C : CorrespondenceTransformationPackage} {Z : C.target}
    (Epkg : EndpointClassificationPackage Z) : Prop :=
  Epkg.endpointMatches

theorem endpoint_classification_closed (Epkg : EndpointClassificationPackage Z) :
    EndpointClassificationClosed Epkg := by
  exact Epkg.endpointMatches

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
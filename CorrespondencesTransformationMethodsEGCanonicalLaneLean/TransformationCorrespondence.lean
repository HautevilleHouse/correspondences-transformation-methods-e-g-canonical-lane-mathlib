import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure TransformationCorrespondencePackage where
  sourceObject : Type u
  targetObject : Type v
  transformationMap : sourceObject → targetObject
  correspondenceCondition : Prop
  geometricConsistency : Prop
  topologicallyClosed : Prop

def TransformationCorrespondenceClosed (P : TransformationCorrespondencePackage) : Prop :=
  P.correspondenceCondition ∧ P.geometricConsistency ∧ P.topologicallyClosed

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
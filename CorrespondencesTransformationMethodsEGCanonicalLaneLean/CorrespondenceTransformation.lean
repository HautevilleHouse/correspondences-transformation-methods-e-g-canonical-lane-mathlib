import HautevilleHouse.CorrespondencesTransformationMethodsEGCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure CorrespondenceTransformationPackage where
  source : CorrespondenceObject
  target : CorrespondenceObject
  transformationApplied : source.transformation → target.transformation
  consistencyCondition : Prop
  derivedDataPreserved : Prop

structure CorrespondenceTransformationEvidence (C : CorrespondenceTransformationPackage) where
  consistencyConditionClosed : C.consistencyCondition
  derivedDataPreservedClosed : C.derivedDataPreserved

def CorrespondenceTransformationClosed (C : CorrespondenceTransformationPackage) : Prop :=
  C.consistencyCondition ∧ C.derivedDataPreserved

theorem correspondence_transformation_closed_from_evidence
    (C : CorrespondenceTransformationPackage)
    (E : CorrespondenceTransformationEvidence C) :
    CorrespondenceTransformationClosed C := by
  exact And.intro E.consistencyConditionClosed E.derivedDataPreservedClosed

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
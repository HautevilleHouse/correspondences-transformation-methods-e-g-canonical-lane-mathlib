import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure SheafTransformPackage where
  X : Type u
  F : TopCat.Sheaf X
  G : TopCat.Sheaf X
  morphism : F ⟶ G
  propertyPreserved : Prop

structure SheafTransformEvidence (S : SheafTransformPackage) where
  morphismClosed : S.morphism
  propertyPreservedClosed : S.propertyPreserved

def SheafTransformClosed (S : SheafTransformPackage) : Prop :=
  S.morphism ∧ S.propertyPreserved

theorem sheaf_transform_closed_from_evidence
    (S : SheafTransformPackage) (Ev : SheafTransformEvidence S) :
    SheafTransformClosed S := by
  exact And.intro Ev.morphismClosed Ev.propertyPreservedClosed

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure InverseCorrespondencePackage where
  F : Type u → Type v
  G : Type v → Type u
  adjunctionUnits : Prop
  naturalTransformations : Prop

structure InverseCorrespondenceEvidence (I : InverseCorrespondencePackage) where
  adjunctionUnitsClosed : I.adjunctionUnits
  naturalTransformationsClosed : I.naturalTransformations

def InverseCorrespondenceClosed (I : InverseCorrespondencePackage) : Prop :=
  I.adjunctionUnits ∧ I.naturalTransformations

theorem inverse_correspondence_closed_from_evidence
    (I : InverseCorrespondencePackage) (Ev : InverseCorrespondenceEvidence I) :
    InverseCorrespondenceClosed I := by
  exact And.intro Ev.adjunctionUnitsClosed Ev.naturalTransformationsClosed

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure CorrespondenceFramework where
  sourceCategory : Type u
  targetCategory : Type v
  functorAssignment : Type w
  naturalTransformation : Type z
  adjunctionData : Prop
  unitCounitSatisfied : Prop
  triangleIdentities : Prop
  adjunctionDataTerm : adjunctionData
  unitCounitSatisfiedTerm : unitCounitSatisfied
  triangleIdentitiesTerm : triangleIdentities

structure CorrespondenceEvidence (C : CorrespondenceFramework) where
  adjunctionDataClosed : C.adjunctionData
  unitCounitSatisfiedClosed : C.unitCounitSatisfied
  triangleIdentitiesClosed : C.triangleIdentities

def CorrespondenceClosed (C : CorrespondenceFramework) : Prop :=
  C.adjunctionData ∧ C.unitCounitSatisfied ∧ C.triangleIdentities

theorem correspondence_closed_from_evidence (C : CorrespondenceFramework)
    (E : CorrespondenceEvidence C) : CorrespondenceClosed C := by
  exact And.intro E.adjunctionDataClosed (And.intro E.unitCounitSatisfiedClosed E.triangleIdentitiesClosed)

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
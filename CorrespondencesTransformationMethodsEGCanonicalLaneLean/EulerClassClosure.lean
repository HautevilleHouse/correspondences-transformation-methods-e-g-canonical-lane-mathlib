import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure EulerClassPackage where
  eulerClassDefined : Prop
  transformationAction : Prop
  invariantUnderCorrespondence : Prop
  obstructionVanishes : Prop

structure EulerClassEvidence (E : EulerClassPackage) where
  eulerClassDefinedClosed : E.eulerClassDefined
  transformationActionClosed : E.transformationAction
  invariantUnderCorrespondenceClosed : E.invariantUnderCorrespondence
  obstructionVanishesClosed : E.obstructionVanishes

def EulerClassClosed (E : EulerClassPackage) : Prop :=
  E.eulerClassDefined ∧ E.transformationAction ∧ E.invariantUnderCorrespondence ∧ E.obstructionVanishes

theorem euler_class_closed_from_evidence (E : EulerClassPackage) (Ev : EulerClassEvidence E) : EulerClassClosed E := by
  exact And.intro Ev.eulerClassDefinedClosed (And.intro Ev.transformationActionClosed (And.intro Ev.invariantUnderCorrespondenceClosed Ev.obstructionVanishesClosed))

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
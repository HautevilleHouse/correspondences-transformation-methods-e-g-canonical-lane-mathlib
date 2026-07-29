import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure ChernClassPackage where
  chernClassDefined : Prop
  transformationAction : Prop
  whittakerFormula : Prop
  splittingPrincipleApplied : Prop

structure ChernClassEvidence (C : ChernClassPackage) where
  chernClassDefinedClosed : C.chernClassDefined
  transformationActionClosed : C.transformationAction
  whittakerFormulaClosed : C.whittakerFormula
  splittingPrincipleAppliedClosed : C.splittingPrincipleApplied

def ChernClassClosed (C : ChernClassPackage) : Prop :=
  C.chernClassDefined ∧ C.transformationAction ∧ C.whittakerFormula ∧ C.splittingPrincipleApplied

theorem chern_class_closed_from_evidence (C : ChernClassPackage) (Ev : ChernClassEvidence C) : ChernClassClosed C := by
  exact And.intro Ev.chernClassDefinedClosed (And.intro Ev.transformationActionClosed (And.intro Ev.whittakerFormulaClosed Ev.splittingPrincipleAppliedClosed))

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
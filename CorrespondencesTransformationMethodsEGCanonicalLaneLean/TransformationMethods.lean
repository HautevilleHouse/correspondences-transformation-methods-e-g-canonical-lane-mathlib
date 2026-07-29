import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure TransformationMethodPackage where
  methodName : String
  inputObject : Type u
  outputObject : Type v
  transformationRule : Prop
  coherenceCondition : Prop
  naturalityCondition : Prop
  transformationRuleTerm : transformationRule
  coherenceConditionTerm : coherenceCondition
  naturalityConditionTerm : naturalityCondition

structure TransformationMethodEvidence (T : TransformationMethodPackage) where
  transformationRuleClosed : T.transformationRule
  coherenceConditionClosed : T.coherenceCondition
  naturalityConditionClosed : T.naturalityCondition

def TransformationMethodClosed (T : TransformationMethodPackage) : Prop :=
  T.transformationRule ∧ T.coherenceCondition ∧ T.naturalityCondition

theorem transformation_method_closed_from_evidence (T : TransformationMethodPackage)
    (E : TransformationMethodEvidence T) : TransformationMethodClosed T := by
  exact And.intro E.transformationRuleClosed (And.intro E.coherenceConditionClosed E.naturalityConditionClosed)

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
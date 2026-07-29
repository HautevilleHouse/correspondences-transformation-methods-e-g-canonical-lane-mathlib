import CorrespondencesTransformationMethodsEGCanonicalLaneLean.EGCore

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure TransformationOperator (A B : Type) where
  forward : A → B
  backward : B → A
  isPair : forward ∘ backward = id ∧ backward ∘ forward = id

def operatorClosed (op : TransformationOperator α β) : Prop :=
  op.isPair.1 ∧ op.isPair.2

theorem operator_closed_iff (op : TransformationOperator α β) :
    operatorClosed op ↔ op.forward ∘ op.backward = id ∧ op.backward ∘ op.forward = id := by
  exact Iff.rfl

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure EGAdmittedObject where
  sourceObject : Type u
  targetObject : Type v
  correspondence : Type w
  adjunctionProperty : Prop
  transformationProperty : Prop
  conclusion : adjunctionProperty ∧ transformationProperty

structure EGAdmissibleClass where
  object : EGAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def EGWitnessClosed (O : EGAdmittedObject) : Prop :=
  O.adjunctionProperty ∧ O.transformationProperty

def EGAdmittedClosure (A : EGAdmissibleClass) : Prop :=
  EGWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
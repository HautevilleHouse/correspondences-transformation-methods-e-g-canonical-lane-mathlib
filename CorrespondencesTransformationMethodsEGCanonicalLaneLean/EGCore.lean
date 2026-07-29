import CorrespondencesTransformationMethodsEGCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

inductive CorrespondenceStatus where
  | transformed : CorrespondenceStatus
  | deferred : CorrespondenceStatus
  | classified : CorrespondenceStatus

def CorrespondenceWitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion

structure AdmittedObject where
  source : Type
  target : Type
  transformationPair : (source → target) × (target → source)
  conclusion : Prop

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse

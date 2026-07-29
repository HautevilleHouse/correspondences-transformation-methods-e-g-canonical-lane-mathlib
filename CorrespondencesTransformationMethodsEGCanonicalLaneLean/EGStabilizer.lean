import canonicalLaneMathlib.AdmissibleClass
import CorrespondencesTransformationMethodsEGCanonicalLaneLean.EGCore

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure EGStabilizerPackage {P : TransformationCorrespondencePackage} (C : EGCorePackage P) where
  stabilizerGroup : Type u
  fixedPointCondition : Prop
  orbitStability : Prop

def EGStabilizerClosed {P : TransformationCorrespondencePackage} {C : EGCorePackage P} (S : EGStabilizerPackage C) : Prop :=
  S.fixedPointCondition ∧ S.orbitStability

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
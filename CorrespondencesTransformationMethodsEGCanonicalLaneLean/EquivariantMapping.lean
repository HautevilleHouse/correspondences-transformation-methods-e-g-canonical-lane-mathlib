import canonicalLaneMathlib.AdmissibleClass
import CorrespondencesTransformationMethodsEGCanonicalLaneLean.EGStabilizer

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure EquivariantMappingPackage {P : TransformationCorrespondencePackage} {C : EGCorePackage P} (S : EGStabilizerPackage C) where
  mapping : Type u → Type v
  equivarianceRelation : Prop
  coherenceCondition : Prop

def EquivariantMappingClosed {P : TransformationCorrespondencePackage} {C : EGCorePackage P} {S : EGStabilizerPackage C} (M : EquivariantMappingPackage S) : Prop :=
  M.equivarianceRelation ∧ M.coherenceCondition

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
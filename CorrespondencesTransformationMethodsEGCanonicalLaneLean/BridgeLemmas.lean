import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CorrespondenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.correspondenceCondition

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
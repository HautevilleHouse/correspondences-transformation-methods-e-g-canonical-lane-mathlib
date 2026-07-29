import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

def bridgeClosed (A : EGAdmissibleClass) : Prop :=
  EGWitnessClosed A.object

theorem bridge_from_admissible_class (A : EGAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
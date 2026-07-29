import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure MonoidalCategoryPackage where
  C : Type u
  tensorProduct : C → C → C
  unitObject : C
  associativity : Prop
  unitLaws : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategoryPackage) where
  associativityClosed : M.associativity
  unitLawsClosed : M.unitLaws

def MonoidalCategoryClosed (M : MonoidalCategoryPackage) : Prop :=
  M.associativity ∧ M.unitLaws

theorem monoidal_category_closed_from_evidence
    (M : MonoidalCategoryPackage) (Ev : MonoidalCategoryEvidence M) :
    MonoidalCategoryClosed M := by
  exact And.intro Ev.associativityClosed Ev.unitLawsClosed

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
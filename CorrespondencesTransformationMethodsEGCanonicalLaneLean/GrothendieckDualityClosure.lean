import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CorrespondencesTransformationMethodsEGCanonicalLaneLean

structure GrothendieckDualityPackage where
  dualityDefined : Prop
  transformationCompatibility : Prop
  traceMapDefined : Prop
  residueTheoremHolds : Prop

structure GrothendieckDualityEvidence (G : GrothendieckDualityPackage) where
  dualityDefinedClosed : G.dualityDefined
  transformationCompatibilityClosed : G.transformationCompatibility
  traceMapDefinedClosed : G.traceMapDefined
  residueTheoremHoldsClosed : G.residueTheoremHolds

def GrothendieckDualityClosed (G : GrothendieckDualityPackage) : Prop :=
  G.dualityDefined ∧ G.transformationCompatibility ∧ G.traceMapDefined ∧ G.residueTheoremHolds

theorem grothendieck_duality_closed_from_evidence (G : GrothendieckDualityPackage) (Ev : GrothendieckDualityEvidence G) : GrothendieckDualityClosed G := by
  exact And.intro Ev.dualityDefinedClosed (And.intro Ev.transformationCompatibilityClosed (And.intro Ev.traceMapDefinedClosed Ev.residueTheoremHoldsClosed))

end CorrespondencesTransformationMethodsEGCanonicalLaneLean
end HautevilleHouse
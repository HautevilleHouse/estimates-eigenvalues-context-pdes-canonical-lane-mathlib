import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure UpperBoundEstimatePackage where
  problem : EigenvalueProblemPackage
  upperBoundConstant : Float
  curvatureUpperBound : Float
  diameterDependence : Prop
  sharpnessClaimed : Bool

structure UpperBoundEstimateEvidence (U : UpperBoundEstimatePackage) where
  constantFiniteClosed : U.upperBoundConstant < Float.inf
  curvatureUpperBoundFiniteClosed : U.curvatureUpperBound < Float.inf
  diameterDependenceClosed : U.diameterDependence

def UpperBoundEstimateClosed (U : UpperBoundEstimatePackage) : Prop :=
  U.upperBoundConstant < Float.inf ∧ U.curvatureUpperBound < Float.inf ∧ U.diameterDependence

theorem upper_bound_estimate_closed_from_evidence (U : UpperBoundEstimatePackage)
    (Ev : UpperBoundEstimateEvidence U) : UpperBoundEstimateClosed U := by
  exact And.intro Ev.constantFiniteClosed
    (And.intro Ev.curvatureUpperBoundFiniteClosed Ev.diameterDependenceClosed)

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse

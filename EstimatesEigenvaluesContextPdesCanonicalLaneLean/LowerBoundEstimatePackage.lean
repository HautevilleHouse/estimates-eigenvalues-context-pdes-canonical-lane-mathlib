import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure LowerBoundEstimatePackage where
  problem : EigenvalueProblemPackage
  lowerBoundConstant : Float
  dimensionFactor : Float
  volumeDependence : Prop
  sharpnessClaimed : Bool

structure LowerBoundEstimateEvidence (L : LowerBoundEstimatePackage) where
  constantPositiveClosed : L.lowerBoundConstant > 0
  dimensionFactorValidClosed : L.dimensionFactor > 0
  volumeDependenceClosed : L.volumeDependence

def LowerBoundEstimateClosed (L : LowerBoundEstimatePackage) : Prop :=
  L.lowerBoundConstant > 0 ∧ L.dimensionFactor > 0 ∧ L.volumeDependence

theorem lower_bound_estimate_closed_from_evidence (L : LowerBoundEstimatePackage)
    (Ev : LowerBoundEstimateEvidence L) : LowerBoundEstimateClosed L := by
  exact And.intro Ev.constantPositiveClosed
    (And.intro Ev.dimensionFactorValidClosed Ev.volumeDependenceClosed)

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure LiYauTypeEstimatePackage where
  problem : EigenvalueProblemPackage
  heatKernelBound : Prop
  gradientEstimate : Prop
  parabolicHarnack : Prop

structure LiYauTypeEstimateEvidence (L : LiYauTypeEstimatePackage) where
  heatKernelBoundClosed : L.heatKernelBound
  gradientEstimateClosed : L.gradientEstimate
  parabolicHarnackClosed : L.parabolicHarnack

def LiYauTypeEstimateClosed (L : LiYauTypeEstimatePackage) : Prop :=
  L.heatKernelBound ∧ L.gradientEstimate ∧ L.parabolicHarnack

theorem li_yau_type_estimate_closed_from_evidence (L : LiYauTypeEstimatePackage)
    (Ev : LiYauTypeEstimateEvidence L) : LiYauTypeEstimateClosed L := by
  exact And.intro Ev.heatKernelBoundClosed
    (And.intro Ev.gradientEstimateClosed Ev.parabolicHarnackClosed)

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse

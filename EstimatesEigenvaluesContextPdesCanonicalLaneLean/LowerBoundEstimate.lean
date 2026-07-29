import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EstimatesEigenvaluesContextPdesCanonicalLaneLean.CaccioppoliInequality

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure LowerBoundEstimatePackage (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E) where
  firstEigenvalueLowerBound : Prop
  logarithmicSobolevInequality : Prop
  constantExplicit : Prop

structure LowerBoundEstimateEvidence (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E)
    (L : LowerBoundEstimatePackage E C) where
  firstEigenvalueLowerBoundClosed : L.firstEigenvalueLowerBound
  logarithmicSobolevInequalityClosed : L.logarithmicSobolevInequality
  constantExplicitClosed : L.constantExplicit

def LowerBoundEstimateClosed (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E)
    (L : LowerBoundEstimatePackage E C) : Prop :=
  L.firstEigenvalueLowerBound ∧ L.logarithmicSobolevInequality ∧ L.constantExplicit

theorem lower_bound_estimate_closed_from_evidence (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E)
    (L : LowerBoundEstimatePackage E C) (Ev : LowerBoundEstimateEvidence E C L) :
    LowerBoundEstimateClosed E C L := by
  exact And.intro Ev.firstEigenvalueLowerBoundClosed
    (And.intro Ev.logarithmicSobolevInequalityClosed Ev.constantExplicitClosed)

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse
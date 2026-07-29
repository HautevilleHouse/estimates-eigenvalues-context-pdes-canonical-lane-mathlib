import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EstimatesEigenvaluesContextPdesCanonicalLaneLean.SpectralTheory

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure UpperBoundEstimatePackage (E : EllipticOperatorPackage)
    (S : SpectralTheoryPackage E) where
  weylAsymptotic : Prop
  remainderEstimate : Prop
  constantExplicit : Prop

structure UpperBoundEstimateEvidence (E : EllipticOperatorPackage)
    (S : SpectralTheoryPackage E)
    (U : UpperBoundEstimatePackage E S) where
  weylAsymptoticClosed : U.weylAsymptotic
  remainderEstimateClosed : U.remainderEstimate
  constantExplicitClosed : U.constantExplicit

def UpperBoundEstimateClosed (E : EllipticOperatorPackage)
    (S : SpectralTheoryPackage E)
    (U : UpperBoundEstimatePackage E S) : Prop :=
  U.weylAsymptotic ∧ U.remainderEstimate ∧ U.constantExplicit

theorem upper_bound_estimate_closed_from_evidence (E : EllipticOperatorPackage)
    (S : SpectralTheoryPackage E)
    (U : UpperBoundEstimatePackage E S) (Ev : UpperBoundEstimateEvidence E S U) :
    UpperBoundEstimateClosed E S U := by
  exact And.intro Ev.weylAsymptoticClosed
    (And.intro Ev.remainderEstimateClosed Ev.constantExplicitClosed)

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EstimatesEigenvaluesContextPdesCanonicalLaneLean.SpectralTheory

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure CaccioppoliInequalityPackage (E : EllipticOperatorPackage) where
  inequalityStatement : Prop
  interiorEstimate : Prop
  boundaryEstimate : Prop

structure CaccioppoliInequalityEvidence (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E) where
  inequalityStatementClosed : C.inequalityStatement
  interiorEstimateClosed : C.interiorEstimate
  boundaryEstimateClosed : C.boundaryEstimate

def CaccioppoliInequalityClosed (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E) : Prop :=
  C.inequalityStatement ∧ C.interiorEstimate ∧ C.boundaryEstimate

theorem caccioppoli_inequality_closed_from_evidence (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E) (Ev : CaccioppoliInequalityEvidence E C) :
    CaccioppoliInequalityClosed E C := by
  exact And.intro Ev.inequalityStatementClosed
    (And.intro Ev.interiorEstimateClosed Ev.boundaryEstimateClosed)

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse
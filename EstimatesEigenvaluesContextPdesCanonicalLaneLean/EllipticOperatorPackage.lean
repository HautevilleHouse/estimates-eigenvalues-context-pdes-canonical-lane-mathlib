import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure EllipticOperatorPackage where
  domain : Type u
  dimension : Nat
  coefficientMatrix : Type v
  ellipticityConstant : Float
  lowerOrderTerms : Prop
  smoothCoefficients : Prop

structure EllipticOperatorEvidence (E : EllipticOperatorPackage) where
  ellipticityConstantPositiveClosed : E.ellipticityConstant > 0
  lowerOrderTermsClosed : E.lowerOrderTerms
  smoothCoefficientsClosed : E.smoothCoefficients

def EllipticOperatorClosed (E : EllipticOperatorPackage) : Prop :=
  E.ellipticityConstant > 0 ∧ E.lowerOrderTerms ∧ E.smoothCoefficients

theorem elliptic_operator_closed_from_evidence (E : EllipticOperatorPackage)
    (Ev : EllipticOperatorEvidence E) : EllipticOperatorClosed E := by
  exact And.intro Ev.ellipticityConstantPositiveClosed
    (And.intro Ev.lowerOrderTermsClosed Ev.smoothCoefficientsClosed)

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse

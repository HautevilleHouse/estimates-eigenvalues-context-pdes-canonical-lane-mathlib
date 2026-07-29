import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure EllipticOperatorPackage where
  domain : Type u
  coefficient : Type v
  leadingTerm : Type w
  lowerOrderTerms : Type x
  uniformEllipticity : Prop
  boundedCoefficients : Prop

structure EllipticOperatorEvidence (E : EllipticOperatorPackage) where
  uniformEllipticityClosed : E.uniformEllipticity
  boundedCoefficientsClosed : E.boundedCoefficients

def EllipticOperatorClosed (E : EllipticOperatorPackage) : Prop :=
  E.uniformEllipticity ∧ E.boundedCoefficients

theorem elliptic_operator_closed_from_evidence (E : EllipticOperatorPackage)
    (Ev : EllipticOperatorEvidence E) : EllipticOperatorClosed E := by
  exact And.intro Ev.uniformEllipticityClosed Ev.boundedCoefficientsClosed

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse
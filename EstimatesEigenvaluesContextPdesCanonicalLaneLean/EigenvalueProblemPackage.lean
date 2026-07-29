import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure EigenvalueProblemPackage where
  operator : EllipticOperatorPackage
  boundaryCondition : String
  eigenvalueType : String
  spectralGapConjectured : Prop
  eigenfunctionRegularity : Prop

structure EigenvalueProblemEvidence (E : EigenvalueProblemPackage) where
  boundaryConditionClosed : E.boundaryCondition = "Dirichlet" ∨ E.boundaryCondition = "Neumann"
  eigenfunctionRegularityClosed : E.eigenfunctionRegularity
  spectralGapConjecturedClosed : E.spectralGapConjectured

def EigenvalueProblemClosed (E : EigenvalueProblemPackage) : Prop :=
  (E.boundaryCondition = "Dirichlet" ∨ E.boundaryCondition = "Neumann") ∧
  E.eigenfunctionRegularity ∧ E.spectralGapConjectured

theorem eigenvalue_problem_closed_from_evidence (E : EigenvalueProblemPackage)
    (Ev : EigenvalueProblemEvidence E) : EigenvalueProblemClosed E := by
  exact And.intro Ev.boundaryConditionClosed
    (And.intro Ev.eigenfunctionRegularityClosed Ev.spectralGapConjecturedClosed)

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse

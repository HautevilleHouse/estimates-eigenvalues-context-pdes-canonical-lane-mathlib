import EstimativesEigenvaluesContextPdesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EstimativesEigenvaluesContextPdesCanonicalLaneLean

def ConstrainedEigenvalueClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_eigenvalue_endgame (A : AdmissibleClass) :
    ConstrainedEigenvalueClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EstimativesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse
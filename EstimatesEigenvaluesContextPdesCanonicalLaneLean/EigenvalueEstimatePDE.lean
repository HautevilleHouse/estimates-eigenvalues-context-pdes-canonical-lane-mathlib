import EstimativesEigenvaluesContextPdesCanonicalLaneLean.DomainGeometry

/-!
# Eigenvalue Estimate PDE Package
-/

namespace HautevilleHouse
namespace EstimativesEigenvaluesContextPdesCanonicalLaneLean

structure EigenvalueEstimatePDEPackage {G : DomainGeometryPackage} where
  domain : Type u
  operatorType : String
  eigenvalueBound : Prop
  pdeRegularity : Prop
  spectralCompactness : Prop

structure EigenvalueEstimatePDEEvidence {G : DomainGeometryPackage}
    (Epkg : EigenvalueEstimatePDEPackage G) where
  eigenvalueBoundClosed : Epkg.eigenvalueBound
  pdeRegularityClosed : Epkg.pdeRegularity
  spectralCompactnessClosed : Epkg.spectralCompactness

def EigenvalueEstimatePDEClosed {G : DomainGeometryPackage}
    (Epkg : EigenvalueEstimatePDEPackage G) : Prop :=
  Epkg.eigenvalueBound ∧ Epkg.pdeRegularity ∧ Epkg.spectralCompactness

theorem eigenvalue_estimate_pde_closed_from_evidence
    {G : DomainGeometryPackage} (Epkg : EigenvalueEstimatePDEPackage G)
    (E : EigenvalueEstimatePDEEvidence Epkg) : EigenvalueEstimatePDEClosed Epkg := by
  exact And.intro E.eigenvalueBoundClosed (And.intro E.pdeRegularityClosed E.spectralCompactnessClosed)

end EstimativesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse
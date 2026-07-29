import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EstimatesEigenvaluesContextPdesCanonicalLaneLean.EllipticOperator

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure SpectralTheoryPackage (E : EllipticOperatorPackage) where
  spectrum : Type u
  eigenfunctions : Type v
  eigenvalues : Type w
  discreteSpectrum : Prop
  eigenfunctionExpansion : Prop

structure SpectralTheoryEvidence (E : EllipticOperatorPackage)
    (S : SpectralTheoryPackage E) where
  discreteSpectrumClosed : S.discreteSpectrum
  eigenfunctionExpansionClosed : S.eigenfunctionExpansion

def SpectralTheoryClosed (E : EllipticOperatorPackage)
    (S : SpectralTheoryPackage E) : Prop :=
  S.discreteSpectrum ∧ S.eigenfunctionExpansion

theorem spectral_theory_closed_from_evidence (E : EllipticOperatorPackage)
    (S : SpectralTheoryPackage E) (Ev : SpectralTheoryEvidence E S) :
    SpectralTheoryClosed E S := by
  exact And.intro Ev.discreteSpectrumClosed Ev.eigenfunctionExpansionClosed

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse
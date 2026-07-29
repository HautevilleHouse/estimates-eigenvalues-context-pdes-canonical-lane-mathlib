import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EstimatesEigenvaluesContextPdesCanonicalLaneLean.LowerBoundEstimate
import HautevilleHouse.EstimatesEigenvaluesContextPdesCanonicalLaneLean.UpperBoundEstimate

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure SemiclassicalAnalysisPackage (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E)
    (S : SpectralTheoryPackage E)
    (L : LowerBoundEstimatePackage E C)
    (U : UpperBoundEstimatePackage E S) where
  semiclassicalParameter : Prop
  microlocalEstimates : Prop
  eigenvalueConcentration : Prop

structure SemiclassicalAnalysisEvidence (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E)
    (S : SpectralTheoryPackage E)
    (L : LowerBoundEstimatePackage E C)
    (U : UpperBoundEstimatePackage E S)
    (Sc : SemiclassicalAnalysisPackage E C S L U) where
  semiclassicalParameterClosed : Sc.semiclassicalParameter
  microlocalEstimatesClosed : Sc.microlocalEstimates
  eigenvalueConcentrationClosed : Sc.eigenvalueConcentration

def SemiclassicalAnalysisClosed (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E)
    (S : SpectralTheoryPackage E)
    (L : LowerBoundEstimatePackage E C)
    (U : UpperBoundEstimatePackage E S)
    (Sc : SemiclassicalAnalysisPackage E C S L U) : Prop :=
  Sc.semiclassicalParameter ∧ Sc.microlocalEstimates ∧ Sc.eigenvalueConcentration

theorem semiclassical_analysis_closed_from_evidence (E : EllipticOperatorPackage)
    (C : CaccioppoliInequalityPackage E)
    (S : SpectralTheoryPackage E)
    (L : LowerBoundEstimatePackage E C)
    (U : UpperBoundEstimatePackage E S)
    (Sc : SemiclassicalAnalysisPackage E C S L U)
    (Ev : SemiclassicalAnalysisEvidence E C S L U Sc) :
    SemiclassicalAnalysisClosed E C S L U Sc := by
  exact And.intro Ev.semiclassicalParameterClosed
    (And.intro Ev.microlocalEstimatesClosed Ev.eigenvalueConcentrationClosed)

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse
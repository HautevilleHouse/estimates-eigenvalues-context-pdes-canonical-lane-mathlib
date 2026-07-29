import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure EigenvalueAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  pde : Prop
  eigenvalueEstimate : Prop
  conclusion : eigenvalueEstimate

def EigenvalueWitnessClosed (O : EigenvalueAdmittedObject) : Prop :=
  O.eigenvalueEstimate

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse
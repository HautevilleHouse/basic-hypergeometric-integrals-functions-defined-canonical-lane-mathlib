import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure QGammaFunctionDefinition (q : ℂ) where
  productFormula : ℂ → ℂ
  functionalEquation : Prop
  meromorphicContinuation : Prop
  infiniteProductRepresentation : Prop
  limitDefinition : Prop
  zeroPoles : Prop
  relationsToThetaFunctions : Prop

def QGammaFunctionClosed (G : QGammaFunctionDefinition q) : Prop :=
  G.functionalEquation ∧ G.meromorphicContinuation ∧ G.relationsToThetaFunctions

structure QGammaFunctionEvidence (G : QGammaFunctionDefinition q) where
  functionalEquationClosed : G.functionalEquation
  meromorphicContinuationClosed : G.meromorphicContinuation
  relationsToThetaFunctionsClosed : G.relationsToThetaFunctions

theorem q_gamma_function_closed_from_evidence (G : QGammaFunctionDefinition q)
    (E : QGammaFunctionEvidence G) : QGammaFunctionClosed G := by
  exact And.intro E.functionalEquationClosed
    (And.intro E.meromorphicContinuationClosed E.relationsToThetaFunctionsClosed)

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse
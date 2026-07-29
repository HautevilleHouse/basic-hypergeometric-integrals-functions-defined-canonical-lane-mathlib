import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure BasicHypergeometricSeriesPackage where
  baseQ : Type u
  parameters : List (Type v)
  seriesTerms : Type w
  convergenceDomain : Prop
  sumFormula : Prop
  functionalEquations : Prop

structure BasicHypergeometricSeriesEvidence (S : BasicHypergeometricSeriesPackage) where
  convergenceDomainClosed : S.convergenceDomain
  sumFormulaClosed : S.sumFormula
  functionalEquationsClosed : S.functionalEquations

def BasicHypergeometricSeriesClosed (S : BasicHypergeometricSeriesPackage) : Prop :=
  S.convergenceDomain ∧ S.sumFormula ∧ S.functionalEquations

theorem basic_hypergeometric_series_closed_from_evidence
    (S : BasicHypergeometricSeriesPackage) (E : BasicHypergeometricSeriesEvidence S) :
    BasicHypergeometricSeriesClosed S := by
  exact And.intro E.convergenceDomainClosed
    (And.intro E.sumFormulaClosed E.functionalEquationsClosed)

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse
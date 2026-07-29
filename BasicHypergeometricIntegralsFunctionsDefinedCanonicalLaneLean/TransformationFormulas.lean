import canonicalLaneMathlib.AdmissibleClass
import BasicHypergeometricSeries

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure TransformationFormulaPackage {A : AdmissibleClass}
    (S : BasicHypergeometricSeriesPackage A) where
  transformationMap : BasicHypergeometricSeriesPackage A → BasicHypergeometricSeriesPackage A
  transformationIdentity : Prop
  functionalEquationSatisfied : Prop

structure TransformationFormulaEvidence {A : AdmissibleClass}
    {S : BasicHypergeometricSeriesPackage A}
    (T : TransformationFormulaPackage S) where
  transformationIdentityClosed : T.transformationIdentity
  functionalEquationSatisfiedClosed : T.functionalEquationSatisfied

def TransformationFormulaClosed {A : AdmissibleClass}
    {S : BasicHypergeometricSeriesPackage A}
    (T : TransformationFormulaPackage S) : Prop :=
  T.transformationIdentity ∧ T.functionalEquationSatisfied

theorem transformationFormulaClosed_from_evidence {A : AdmissibleClass}
    {S : BasicHypergeometricSeriesPackage A}
    (T : TransformationFormulaPackage S) (E : TransformationFormulaEvidence T) :
    TransformationFormulaClosed T := by
  exact And.intro E.transformationIdentityClosed E.functionalEquationSatisfiedClosed

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse
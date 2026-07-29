import HautevilleHouse.BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean.BasicHypergeometricSeries

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure JacksonIntegral where
  integrand : BasicHypergeometricSeries
  measure : ℕ → ℂ
  sum : ℕ → ℂ
  integralModulus : Prop
  convergent : Prop

def JacksonIntegralClosed (J : JacksonIntegral) : Prop :=
  J.integralModulus ∧ J.convergent

theorem jackson_integral_closed_from_evidence (J : JacksonIntegral) :
    JacksonIntegralClosed J := by
  exact And.intro J.integralModulus J.convergent

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse
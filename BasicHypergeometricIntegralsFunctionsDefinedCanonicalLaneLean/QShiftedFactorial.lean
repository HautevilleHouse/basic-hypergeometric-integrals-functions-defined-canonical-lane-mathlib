import Mathlib.Data.Complex.Basic

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure QShiftedFactorial where
  a : ℂ
  q : ℂ
  n : ℕ
  value : ℂ
  analyticInA : Prop
  analyticInQ : Prop
  qNotRootOfUnity : q ≠ 0 ∧ q ≠ 1

def QShiftedFactorialClosed (f : QShiftedFactorial) : Prop :=
  f.analyticInA ∧ f.analyticInQ ∧ f.qNotRootOfUnity.1 ∧ f.qNotRootOfUnity.2

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse
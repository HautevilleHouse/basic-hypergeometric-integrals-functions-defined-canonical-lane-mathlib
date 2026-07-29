import canonicalLaneMathlib.BasicHypergeometricIntegrals

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure FunctionSpace (α : Type u) where
  carrier : Set (α → ℂ)
  addition : carrier → carrier → carrier
  scalarMultiplication : ℂ → carrier → carrier
  completeness : Prop

def FunctionSpaceClosed (F : FunctionSpace α) : Prop :=
  F.completeness

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse

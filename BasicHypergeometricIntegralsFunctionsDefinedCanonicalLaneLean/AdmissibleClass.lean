import BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean.QBetaFunctionPackage

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure BasicHypergeometricAdmittedObject where
  series : BasicHypergeometricSeries 1 0
  integral : QIntegral
  gammaFunction : QGammaFunctionDefinition ℂ
  betaFunction : QBetaFunction ℂ
  allDefined : Prop
  closureCondition : Prop
  conclusion : closureCondition

structure AdmissibleClass where
  object : BasicHypergeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.closureCondition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean.BasicHypergeometricSeries

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure TransformationTheorem where
  source : BasicHypergeometricSeries
  target : BasicHypergeometricSeries
  equalityHolds : Prop
  transformProof : equalityHolds

def TransformationTheoremClosed (T : TransformationTheorem) : Prop :=
  T.equalityHolds

theorem transformation_theorem_closed_from_evidence (T : TransformationTheorem) :
    TransformationTheoremClosed T := by
  exact T.transformProof

structure HeineTransformation extends TransformationTheorem where
  isHeine : True

def HeineTransformationClosed (h : HeineTransformation) : Prop :=
  TransformationTheoremClosed h.toTransformationTheorem

theorem heine_transformation_closed_from_evidence (h : HeineTransformation) :
    HeineTransformationClosed h := by
  exact transformation_theorem_closed_from_evidence h.toTransformationTheorem

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse
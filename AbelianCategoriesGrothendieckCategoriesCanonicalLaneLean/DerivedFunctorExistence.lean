import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure DerivedFunctorExistencePackage where
  injectiveResolutionExists : Prop
  rightDerivedFunctorDefined : Prop
  deltaFunctor : Prop
  longExactSequence : Prop

structure DerivedFunctorExistenceEvidence (D : DerivedFunctorExistencePackage) where
  injectiveResolutionExistsClosed : D.injectiveResolutionExists
  rightDerivedFunctorDefinedClosed : D.rightDerivedFunctorDefined
  deltaFunctorClosed : D.deltaFunctor
  longExactSequenceClosed : D.longExactSequence

def DerivedFunctorExistenceClosed (D : DerivedFunctorExistencePackage) : Prop :=
  D.injectiveResolutionExists ∧ D.rightDerivedFunctorDefined ∧ D.deltaFunctor ∧ D.longExactSequence

theorem derived_functor_existence_closed_from_evidence
    (D : DerivedFunctorExistencePackage) (E : DerivedFunctorExistenceEvidence D) :
    DerivedFunctorExistenceClosed D := by
  exact And.intro E.injectiveResolutionExistsClosed
    (And.intro E.rightDerivedFunctorDefinedClosed
      (And.intro E.deltaFunctorClosed E.longExactSequenceClosed))

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
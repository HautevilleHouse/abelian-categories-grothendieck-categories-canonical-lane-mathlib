import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure AbelianCategoryPackage where
  category : Type u
  zeroMorphism : Prop
  kernelExists : Prop
  cokernelExists : Prop
  monoEpiFactorisation : Prop
  allMorphismsHaveKernelAndCokernel : Prop

structure AbelianCategoryEvidence (A : AbelianCategoryPackage) where
  zeroMorphismClosed : A.zeroMorphism
  kernelExistsClosed : A.kernelExists
  cokernelExistsClosed : A.cokernelExists
  monoEpiFactorisationClosed : A.monoEpiFactorisation
  allMorphismsHaveKernelAndCokernelClosed : A.allMorphismsHaveKernelAndCokernel

def AbelianCategoryClosed (A : AbelianCategoryPackage) : Prop :=
  A.zeroMorphism ∧ A.kernelExists ∧ A.cokernelExists ∧ A.monoEpiFactorisation ∧ A.allMorphismsHaveKernelAndCokernel

theorem abelian_category_closed_from_evidence (A : AbelianCategoryPackage) (E : AbelianCategoryEvidence A) :
    AbelianCategoryClosed A := by
  exact And.intro E.zeroMorphismClosed
    (And.intro E.kernelExistsClosed
      (And.intro E.cokernelExistsClosed
        (And.intro E.monoEpiFactorisationClosed E.allMorphismsHaveKernelAndCokernelClosed)))

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse

import HautevilleHouse.AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.AdmissibleClass

/-!
# Abelian Category Package
-/

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure AbelianCategoryPackage where
  category : Type u
  hasZeroObject : Prop
  hasKernels : Prop
  hasCokernels : Prop
  allMonomorphismsAreKernels : Prop
  allEpimorphismsAreCokernels : Prop

structure AbelianCategoryEvidence (P : AbelianCategoryPackage) where
  hasZeroObjectClosed : P.hasZeroObject
  hasKernelsClosed : P.hasKernels
  hasCokernelsClosed : P.hasCokernels
  allMonomorphismsAreKernelsClosed : P.allMonomorphismsAreKernels
  allEpimorphismsAreCokernelsClosed : P.allEpimorphismsAreCokernels

def AbelianCategoryClosed (P : AbelianCategoryPackage) : Prop :=
  P.hasZeroObject ∧ P.hasKernels ∧ P.hasCokernels ∧
  P.allMonomorphismsAreKernels ∧ P.allEpimorphismsAreCokernels

theorem abelian_category_closed_from_evidence (P : AbelianCategoryPackage)
    (E : AbelianCategoryEvidence P) : AbelianCategoryClosed P := by
  exact And.intro E.hasZeroObjectClosed
    (And.intro E.hasKernelsClosed
      (And.intro E.hasCokernelsClosed
        (And.intro E.allMonomorphismsAreKernelsClosed
          E.allEpimorphismsAreCokernelsClosed)))

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
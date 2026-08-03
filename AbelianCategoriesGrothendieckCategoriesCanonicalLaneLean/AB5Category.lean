import AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.GrothendieckCategory

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure AB5CategoryPackage where
  category : Type u
  isAbelian : Prop
  filteredColimitsExact : Prop
  ab5Axiom : Prop
  evidence : isAbelian ∧ filteredColimitsExact ∧ ab5Axiom

def AB5CategoryClosed (A : AB5CategoryPackage) : Prop :=
  A.isAbelian ∧ A.filteredColimitsExact ∧ A.ab5Axiom

theorem ab5_category_closed_from_evidence (A : AB5CategoryPackage) :
    AB5CategoryClosed A := by
  exact A.evidence

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
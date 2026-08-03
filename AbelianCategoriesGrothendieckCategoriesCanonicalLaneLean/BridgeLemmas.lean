import HautevilleHouse.AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
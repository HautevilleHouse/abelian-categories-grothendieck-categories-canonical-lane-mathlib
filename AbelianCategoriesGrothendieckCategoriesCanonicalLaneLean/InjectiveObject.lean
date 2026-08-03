import AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.GrothendieckCategory

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure InjectiveObjectPackage where
  category : Type u
  injectiveObjects : Prop
  enoughInjectives : Prop
  injectiveResolution : Prop
  evidence : injectiveObjects ∧ enoughInjectives ∧ injectiveResolution

def InjectiveObjectClosed (I : InjectiveObjectPackage) : Prop :=
  I.injectiveObjects ∧ I.enoughInjectives ∧ I.injectiveResolution

theorem injective_object_closed_from_evidence (I : InjectiveObjectPackage) :
    InjectiveObjectClosed I := by
  exact I.evidence

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
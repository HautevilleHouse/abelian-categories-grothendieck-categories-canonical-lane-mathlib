import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure AbelianGrothendieckAdmittedObject where
  category : Type u
  isAbelian : Prop
  isGrothendieck : Prop
  generatorExists : Prop
  enoughInjectives : Prop
  conclusion : isGrothendieck ∧ generatorExists ∧ enoughInjectives

def GrothendieckWitnessClosed (O : AbelianGrothendieckAdmittedObject) : Prop :=
  O.conclusion

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
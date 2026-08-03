import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure AbelianCategoryAdmittedObject where
  category : Type u
  hasAbelian : Prop
  conclusion : hasAbelian

structure GrothendieckCategoryAdmittedObject where
  category : Type u
  isGrothendieck : Prop
  conclusion : isGrothendieck

structure AdmissibleClass where
  object : GrothendieckCategoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.GrothendieckAbelianCondition
import AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.InjectiveEnvelope
import AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.LocalizationAndSerreSubcategories
import AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.DerivedFunctorExistence
import AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.GeneratorCondition

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure GrothendieckCategoryPackage where
  abelianCond : GrothendieckAbelianConditionPackage
  injectiveEnv : InjectiveEnvelopePackage
  localization : LocalizationAndSerreSubcategoriesPackage
  derived : DerivedFunctorExistencePackage
  generator : GeneratorConditionPackage

structure GrothendieckCategoryEvidence (G : GrothendieckCategoryPackage) where
  abelianCondEvidence : GrothendieckAbelianConditionEvidence G.abelianCond
  injectiveEnvEvidence : InjectiveEnvelopeEvidence G.injectiveEnv
  localizationEvidence : LocalizationAndSerreSubcategoriesEvidence G.localization
  derivedEvidence : DerivedFunctorExistenceEvidence G.derived
  generatorEvidence : GeneratorConditionEvidence G.generator

def GrothendieckCategoryClosed (G : GrothendieckCategoryPackage) : Prop :=
  GrothendieckAbelianConditionClosed G.abelianCond ∧
  InjectiveEnvelopeClosed G.injectiveEnv ∧
  LocalizationAndSerreSubcategoriesClosed G.localization ∧
  DerivedFunctorExistenceClosed G.derived ∧
  GeneratorConditionClosed G.generator

theorem grothendieck_category_closed_from_evidence
    (G : GrothendieckCategoryPackage) (E : GrothendieckCategoryEvidence G) :
    GrothendieckCategoryClosed G := by
  refine And.intro (grothendieck_abelian_condition_closed_from_evidence G.abelianCond E.abelianCondEvidence)
    (And.intro (injective_envelope_closed_from_evidence G.injectiveEnv E.injectiveEnvEvidence)
      (And.intro (localization_and_serre_subcategories_closed_from_evidence G.localization E.localizationEvidence)
        (And.intro (derived_functor_existence_closed_from_evidence G.derived E.derivedEvidence)
          (generator_condition_closed_from_evidence G.generator E.generatorEvidence))))

def ConstrainedGrothendieckClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_grothendieck_endgame (A : AdmissibleClass) :
    ConstrainedGrothendieckClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
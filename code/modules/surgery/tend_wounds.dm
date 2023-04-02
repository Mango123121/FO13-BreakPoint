/datum/surgery/tend_wounds
	name = "tend wounds"
	species = list(/mob/living/carbon/human, /mob/living/carbon/monkey)
	possible_locs = list(BODY_ZONE_CHEST)
	requires_real_bodypart = 1
	steps = list(/datum/surgery_step/incise,
		/datum/surgery_step/heal,
		/datum/surgery_step/close)
	ignore_clothes = TRUE
	can_cancel = TRUE

/datum/surgery_step/heal
	name = "mend wounds"
	implements = list(/obj/item/hemostat = 100)
	time = 10
	repeatable = TRUE
	
/datum/surgery_step/heal/success(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery)
	target.adjustFireLoss(-20)
	target.adjustBruteLoss(-20)
	return 1


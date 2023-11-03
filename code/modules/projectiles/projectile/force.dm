/obj/item/projectile/forcebolt
	name = "force bolt"
	icon = 'icons/obj/projectiles.dmi'
	icon_state = "ice_1"
	damage = 20
	check_armour = "energy"
	poisedamage = 35.0 // well, itsa FORCE bolt right?

/obj/item/projectile/forcebolt/strong
	name = "force bolt"

/obj/item/projectile/forcebolt/on_hit(atom/movable/target, blocked = 0)
	if(istype(target))
		var/throwdir = get_dir(firer,target)
		target.throw_at(get_edge_target_turf(target, throwdir), 10, 1)
		return 1

/*
/obj/item/projectile/forcebolt/strong/on_hit(atom/target, blocked = 0)

	// NONE OF THIS WORKS. DO NOT USE.
	var/throwdir = null

	for(var/mob/M in hearers(2, src))
		if(M.loc != src.loc)
			throwdir = get_dir(src,target)
			M.throw_at(get_edge_target_turf(M, throwdir),15,1)
	return ..()
*/

turf
	icon='Sprites/turfs.dmi'
	wall
		opacity = 1
		density = 1
		icon = 'Sprites/turfs.dmi'
		icon_state = "wall"
		Click()
			world << "[usr] push wall"
			sleep(5)

		hidden_wall
			name = "wall"
			Click()
				density = !density

	floor
		name="Floor"
		desc="Ordinary floor tile"
		icon_state = "floor"

		trap_floor
			name="floor"
			desc="ordinary floor tile"
			Entered(mob/O)
//				if(istype(O, /mob))
				O.HP -= 50
				O << "-50 HP"
				O.CheckDie()
				return

	spawn_place
		name = "Spawn"
		icon_state = "spawn"


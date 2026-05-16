/datum/wires/ballista
	holder_type = /obj/structure/mounted_gun/ballista
	proper_name = "Improvised Ballista"

/datum/wires/emitter/New(atom/holder)
	wires = list(WIRE_FIRE)
	..()

/datum/wires/emitter/on_pulse(wire)
	var/obj/structure/mounted_gun/ballista/E = holder
	switch(wire)
		if(WIRE_FIRE)
			E.fire()
	..()

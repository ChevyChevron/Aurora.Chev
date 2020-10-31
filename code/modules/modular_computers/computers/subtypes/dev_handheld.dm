/obj/item/modular_computer/handheld
	name = "tablet computer"
	desc = "A portable device for your needs on the go."
	icon = 'icons/obj/modular_tablet.dmi'
	icon_state = "tablet"
	icon_state_unpowered = "tablet"
	icon_state_menu = "menu"
	slot_flags = SLOT_ID | SLOT_BELT
	can_reset = TRUE
	hardware_flag = PROGRAM_TABLET
	max_hardware_size = 1
	w_class = ITEMSIZE_SMALL
	light_strength = 2					// Same as PDAs

/obj/item/modular_computer/handheld/Initialize()
	. = ..()
	set_icon()

/obj/item/modular_computer/handheld/proc/set_icon()
	icon_state += pick("", "-blue", "-green", "-red", "-brown")
	icon_state_unpowered = icon_state
	icon_state_broken = icon_state
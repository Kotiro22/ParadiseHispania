/obj/item/assembly/signaler
	name = "remote signaling device"
	desc = "Used to remotely activate devices."
	icon_state = "signaller"
	item_state = "signaler"
	materials = list(MAT_METAL=400, MAT_GLASS=120)
	origin_tech = "magnets=1;bluespace=1"
	wires = WIRE_RECEIVE | WIRE_PULSE | WIRE_RADIO_PULSE | WIRE_RADIO_RECEIVE

	secured = 1
	var/receiving = 0

	bomb_name = "remote-control bomb"

	var/code = 30
	var/frequency = 1457
	var/delay = 0
	var/datum/radio_frequency/radio_connection
	var/airlock_wire = null

/obj/item/assembly/signaler/New()
	..()
	if(radio_controller)
		set_frequency(frequency)

/obj/item/assembly/signaler/Initialize()
	..()
	if(radio_controller)
		set_frequency(frequency)

/obj/item/assembly/signaler/Destroy()
	if(radio_controller)
		radio_controller.remove_object(src, frequency)
	radio_connection = null
	return ..()

/obj/item/assembly/signaler/describe()
	return "\The [src]'s power light is [receiving?"on":"off"]"

/obj/item/assembly/signaler/activate()
	if(cooldown > 0)
		return FALSE
	cooldown = 2
	spawn(10)
		process_cooldown()

	signal()
	return TRUE

/obj/item/assembly/signaler/update_icon()
	if(holder)
		holder.update_icon()
	return

/obj/item/assembly/signaler/interact(mob/user as mob, flag1)
	var/t1 = "-------"
	var/dat = {"
		<TT>
	"}
	if(!flag1)
		dat += {"
			<A href='byond://?src=[UID()];send=1'>Send Signal</A><BR>
			Receiver is <A href='byond://?src=[UID()];receive=1'>[receiving?"on":"off"]</A><BR>
		"}
	dat += {"
		<B>Frequency/Code</B> for signaler:<BR>
		Frequency:
		<A href='byond://?src=[UID()];freq=-10'>-</A>
		<A href='byond://?src=[UID()];freq=-2'>-</A>
		[format_frequency(src.frequency)]
		<A href='byond://?src=[UID()];freq=2'>+</A>
		<A href='byond://?src=[UID()];freq=10'>+</A><BR>

		Code:
		<A href='byond://?src=[UID()];code=-5'>-</A>
		<A href='byond://?src=[UID()];code=-1'>-</A>
		[src.code]
		<A href='byond://?src=[UID()];code=1'>+</A>
		<A href='byond://?src=[UID()];code=5'>+</A><BR>
		[t1]
		</TT>
	"}
	var/datum/browser/popup = new(user, "radio", name, 400, 400)
	popup.set_content(dat)
	popup.open(0)
	onclose(user, "radio")
	return


/obj/item/assembly/signaler/Topic(href, href_list)
	..()

	if(!usr.canmove || usr.stat || usr.restrained() || !in_range(loc, usr))
		usr << browse(null, "window=radio")
		onclose(usr, "radio")
		return

	if(href_list["freq"])
		var/new_frequency = (frequency + text2num(href_list["freq"]))
		if(new_frequency < RADIO_LOW_FREQ || new_frequency > RADIO_HIGH_FREQ)
			new_frequency = sanitize_frequency(new_frequency, RADIO_LOW_FREQ, RADIO_HIGH_FREQ)
		set_frequency(new_frequency)

	if(href_list["code"])
		src.code += text2num(href_list["code"])
		src.code = round(src.code)
		src.code = min(100, src.code)
		src.code = max(1, src.code)
	if(href_list["receive"])
		receiving = !receiving

	if(href_list["send"])
		spawn( 0 )
			signal()

	if(usr)
		attack_self(usr)

	return

/obj/item/assembly/signaler/proc/signal()
	if(!radio_connection) return

	var/datum/signal/signal = new
	signal.source = src
	signal.encryption = code
	signal.data["message"] = "ACTIVATE"
	radio_connection.post_signal(src, signal)

	var/time = time2text(world.realtime,"hh:mm:ss")
	var/turf/T = get_turf(src)
	if(usr)
		lastsignalers.Add("[time] <B>:</B> [usr.key] used [src] @ location ([T.x],[T.y],[T.z]) <B>:</B> [format_frequency(frequency)]/[code]")

	return

/obj/item/assembly/signaler/pulse(var/radio = 0)
	if(src.connected && src.wires)
		connected.Pulse(src)
	else
		return ..(radio)

/obj/item/assembly/signaler/receive_signal(datum/signal/signal)
	if(!receiving || !signal)
		return FALSE

	if(signal.encryption != code)
		return FALSE

	if(!(src.wires & WIRE_RADIO_RECEIVE))
		return FALSE
	pulse(1)

	for(var/mob/O in hearers(1, src.loc))
		O.show_message("[bicon(src)] *beep* *beep*", 3, "*beep* *beep*", 2)
	return

/obj/item/assembly/signaler/proc/set_frequency(new_frequency)
	if(!radio_controller)
		sleep(20)
	if(!radio_controller)
		return
	radio_controller.remove_object(src, frequency)
	frequency = new_frequency
	radio_connection = radio_controller.add_object(src, frequency, RADIO_CHAT)
	return

// Embedded signaller used in anomalies.
/obj/item/assembly/signaler/anomaly
	name = "anomaly core"
	desc = "The neutralized core of an anomaly. It'd probably be valuable for research."
	icon_state = "anomaly core"
	item_state = "electronic"
	receiving = 1

/obj/item/assembly/signaler/anomaly/receive_signal(datum/signal/signal)
	..()
	for(var/obj/effect/anomaly/A in orange(0, src))
		A.anomalyNeutralize()

/obj/item/assembly/signaler/anomaly/attack_self()
	return

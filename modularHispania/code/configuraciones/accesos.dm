///Engi///

/datum/job/chief_engineer/New()
	access = list(
		ACCESS_ENGINE,
		ACCESS_ENGINE_EQUIP,
		ACCESS_TECH_STORAGE,
		ACCESS_MAINT_TUNNELS,
		ACCESS_TELEPORTER,
		ACCESS_EXTERNAL_AIRLOCKS,
		ACCESS_ATMOSPHERICS,
		ACCESS_EMERGENCY_STORAGE,
		ACCESS_EVA, ACCESS_HEADS,
		ACCESS_CONSTRUCTION,
		ACCESS_SEC_DOORS,
		ACCESS_CE,
		ACCESS_RC_ANNOUNCE,
		ACCESS_KEYCARD_AUTH,
		ACCESS_TCOMSAT,
		ACCESS_MINISAT,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_WEAPONS
	)
	return ..()

/datum/job/engineer/New()
	access = list(
		ACCESS_MAINT_TUNNELS,
		ACCESS_EVA,
		ACCESS_ATMOSPHERICS,
		ACCESS_EMERGENCY_STORAGE,
		ACCESS_ENGINE,
		ACCESS_ENGINE_EQUIP,
		ACCESS_TECH_STORAGE,
		ACCESS_EXTERNAL_AIRLOCKS,
		ACCESS_CONSTRUCTION,
		ACCESS_MINERAL_STOREROOM
	)
	return ..()

/datum/job/atmos/New()
	access = list(
		ACCESS_MAINT_TUNNELS,
		ACCESS_EVA,
		ACCESS_ATMOSPHERICS,
		ACCESS_EMERGENCY_STORAGE,
		ACCESS_ENGINE,
		ACCESS_ENGINE_EQUIP,
		ACCESS_TECH_STORAGE,
		ACCESS_EXTERNAL_AIRLOCKS,
		ACCESS_CONSTRUCTION,
		ACCESS_MINERAL_STOREROOM
	)
	return ..()

///Cargo///

/datum/job/qm/New()
	access = list(
		ACCESS_CARGO_BAY,
		ACCESS_CARGO_BOT,
		ACCESS_CARGO,
		ACCESS_HEADS_VAULT,
		ACCESS_HEADS,
		ACCESS_KEYCARD_AUTH,
		ACCESS_MAILSORTING,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MINING_STATION,
		ACCESS_MINING,
		ACCESS_MINT,
		ACCESS_QM,
		ACCESS_RC_ANNOUNCE,
		ACCESS_SEC_DOORS,
		ACCESS_SUPPLY_SHUTTLE,
		ACCESS_WEAPONS,
		ACCESS_TELEPORTER,
		ACCESS_EXPEDITION,
		ACCESS_EXTERNAL_AIRLOCKS,
		ACCESS_EVA
	)
	return ..()

/datum/job/cargo_tech/New()
	access = list(
		ACCESS_CARGO_BAY,
		ACCESS_CARGO,
		ACCESS_MAILSORTING,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_SUPPLY_SHUTTLE,
		ACCESS_MINING_STATION,
		ACCESS_MINING,
		ACCESS_MINT,
		ACCESS_EXPEDITION,
		ACCESS_EVA,
		ACCESS_EXTERNAL_AIRLOCKS
	)
	return ..()

/datum/job/mining/New()
	access = list(
		ACCESS_CARGO_BAY,
		ACCESS_CARGO,
		ACCESS_MAILSORTING,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_SUPPLY_SHUTTLE,
		ACCESS_MINING_STATION,
		ACCESS_MINING,
		ACCESS_MINT,
		ACCESS_EXPEDITION,
		ACCESS_EVA,
		ACCESS_EXTERNAL_AIRLOCKS
	)
	return ..()

/datum/job/explorer/New()
	access = list(
		ACCESS_CARGO_BAY,
		ACCESS_CARGO,
		ACCESS_MAILSORTING,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_SUPPLY_SHUTTLE,
		ACCESS_MINING_STATION,
		ACCESS_MINING,
		ACCESS_MINT,
		ACCESS_EXPEDITION,
		ACCESS_EVA,
		ACCESS_EXTERNAL_AIRLOCKS
	)
	return ..()

///Service///

/datum/job/hop/New()
	access = list(
		ACCESS_ALL_PERSONAL_LOCKERS,
		ACCESS_CHANGE_IDS,
		ACCESS_RC_ANNOUNCE,
		ACCESS_HEADS_VAULT,
		ACCESS_HEADS,
		ACCESS_SEC_DOORS,
		ACCESS_KEYCARD_AUTH,
		ACCESS_BAR,
		ACCESS_CHAPEL_OFFICE,
		ACCESS_CLOWN,
		ACCESS_MIME,
		ACCESS_CREMATORIUM,
		ACCESS_HOP,
		ACCESS_HYDROPONICS,
		ACCESS_JANITOR,
		ACCESS_KITCHEN,
		ACCESS_LIBRARY,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_THEATRE,
		ACCESS_WEAPONS
	)
	return ..()

/datum/job/bartender/New()
	access = list(ACCESS_KITCHEN, ACCESS_BAR, ACCESS_HYDROPONICS, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM, ACCESS_WEAPONS)
	return ..()

/datum/job/chef/New()
	access = list(ACCESS_KITCHEN, ACCESS_BAR, ACCESS_HYDROPONICS, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	return ..()

/datum/job/hydro/New()
	access = list(ACCESS_HYDROPONICS, ACCESS_MAINT_TUNNELS)
	return ..()

/datum/job/clown/New()
	access = list(ACCESS_THEATRE, ACCESS_CLOWN, ACCESS_MAINT_TUNNELS)
	return ..()


/datum/job/clown/New()
	access = list(ACCESS_THEATRE, ACCESS_MIME, ACCESS_MAINT_TUNNELS)
	return ..()

/datum/job/janitor/New()
	access = list(ACCESS_JANITOR, ACCESS_MAINT_TUNNELS)
	return ..()

/datum/job/chaplain/New()
	access = list(ACCESS_CHAPEL_OFFICE, ACCESS_CREMATORIUM, ACCESS_MAINT_TUNNELS)
	return ..()


/datum/job/librarian/New()
	access = list(ACCESS_LIBRARY, ACCESS_MAINT_TUNNELS)
	return ..()

///Med///

/datum/job/cmo/New()
	access = list(
		ACCESS_CMO,
		ACCESS_EVA,
		ACCESS_RC_ANNOUNCE,
		ACCESS_GENETICS,
		ACCESS_HEADS,
		ACCESS_KEYCARD_AUTH,
		ACCESS_CHEMISTRY,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MEDICAL,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MORGUE,
		ACCESS_PARAMEDIC,
		ACCESS_PSYCHIATRIST,
		ACCESS_SURGERY,
		ACCESS_VIROLOGY,
		ACCESS_SEC_DOORS,
		ACCESS_WEAPONS
	)
	return ..()

/datum/job/doctor/New()
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_CHEMISTRY, ACCESS_PSYCHIATRIST, ACCESS_VIROLOGY, ACCESS_SURGERY, ACCESS_PARAMEDIC, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	return ..()

/datum/job/coroner/New()
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_CHEMISTRY, ACCESS_PSYCHIATRIST, ACCESS_VIROLOGY, ACCESS_SURGERY, ACCESS_PARAMEDIC, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	return ..()

/datum/job/chemist/New()
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_CHEMISTRY, ACCESS_PSYCHIATRIST, ACCESS_VIROLOGY, ACCESS_SURGERY, ACCESS_PARAMEDIC, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	return ..()

/datum/job/virologist/New()
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_CHEMISTRY, ACCESS_PSYCHIATRIST, ACCESS_VIROLOGY, ACCESS_SURGERY, ACCESS_PARAMEDIC, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	return ..()

/datum/job/psychiatrist/New()
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_CHEMISTRY, ACCESS_PSYCHIATRIST, ACCESS_VIROLOGY, ACCESS_SURGERY, ACCESS_PARAMEDIC, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	return ..()

/datum/job/paramedic/New()
	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_CHEMISTRY, ACCESS_PSYCHIATRIST, ACCESS_VIROLOGY, ACCESS_SURGERY, ACCESS_PARAMEDIC, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	return ..()

///Science///

/datum/job/rd/New()
	access = list(
		ACCESS_AI_UPLOAD,
		ACCESS_GENETICS,
		ACCESS_HEADS,
		ACCESS_KEYCARD_AUTH,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_NETWORK,
		ACCESS_RC_ANNOUNCE,
		ACCESS_RD,
		ACCESS_RESEARCH,
		ACCESS_ROBOTICS,
		ACCESS_SEC_DOORS,
		ACCESS_TCOMSAT,
		ACCESS_TECH_STORAGE,
		ACCESS_TELEPORTER,
		ACCESS_TOX_STORAGE,
		ACCESS_TOX,
		ACCESS_XENOARCH,
		ACCESS_XENOBIOLOGY,
		ACCESS_WEAPONS
	)
	return ..()

/datum/job/scientist/New()
	access = list(
		ACCESS_MAINT_TUNNELS,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_RESEARCH,
		ACCESS_TOX_STORAGE,
		ACCESS_TOX,
		ACCESS_XENOARCH,
		ACCESS_XENOBIOLOGY,
		ACCESS_ROBOTICS,
		ACCESS_MAINT_TUNNELS,
		ACCESS_GENETICS
	)
	return ..()

/datum/job/roboticist/New()
	access = list(
		ACCESS_MAINT_TUNNELS,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_RESEARCH,
		ACCESS_TOX_STORAGE,
		ACCESS_TOX,
		ACCESS_XENOARCH,
		ACCESS_XENOBIOLOGY,
		ACCESS_ROBOTICS,
		ACCESS_MAINT_TUNNELS,
		ACCESS_GENETICS
	)
	return ..()

/datum/job/geneticist/New()
	access = list(
		ACCESS_MAINT_TUNNELS,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_RESEARCH,
		ACCESS_TOX_STORAGE,
		ACCESS_TOX,
		ACCESS_XENOARCH,
		ACCESS_XENOBIOLOGY,
		ACCESS_ROBOTICS,
		ACCESS_MAINT_TUNNELS,
		ACCESS_GENETICS
	)
	return ..()

///Sec///

/datum/job/hos/New()
	access = list(
		ACCESS_ALL_PERSONAL_LOCKERS,
		ACCESS_ARMORY,
		ACCESS_BRIG,
		ACCESS_CARGO_BAY,
		ACCESS_CARGO,
		ACCESS_CONSTRUCTION,
		ACCESS_COURT,
		ACCESS_ENGINE,
		ACCESS_EVA,
		ACCESS_EXPEDITION,
		ACCESS_FORENSICS_LOCKERS,
		ACCESS_HEADS,
		ACCESS_HOS,
		ACCESS_KEYCARD_AUTH,
		ACCESS_MAILSORTING,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MEDICAL,
		ACCESS_MINING,
		ACCESS_MORGUE,
		ACCESS_RC_ANNOUNCE,
		ACCESS_RESEARCH,
		ACCESS_SEC_DOORS,
		ACCESS_SECURITY,
		ACCESS_SUPPLY_SHUTTLE,
		ACCESS_WEAPONS
	)
	return ..()

/datum/job/warden/New()
	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_MAINT_TUNNELS, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_ARMORY)
	return ..()

/datum/job/detective/New()
	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_MAINT_TUNNELS, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MORGUE)
	return ..()

/datum/job/officer/New()
	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_MAINT_TUNNELS, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS)
	return ..()


///COMANDO///

/datum/job/nanotrasenrep/New()
	access = list(
		ACCESS_CARGO,
		ACCESS_HEADS_VAULT,
		ACCESS_HEADS,
		ACCESS_KEYCARD_AUTH,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MEDICAL,
		ACCESS_MORGUE,
		ACCESS_NTREP,
		ACCESS_RC_ANNOUNCE,
		ACCESS_RESEARCH,
		ACCESS_SEC_DOORS,
		ACCESS_WEAPONS,
		ACCESS_ENGINE
	)
	return ..()

/datum/job/blueshield/New()
	access = list(
		ACCESS_BLUESHIELD,
		ACCESS_CARGO,
		ACCESS_HEADS,
		ACCESS_KEYCARD_AUTH,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MEDICAL,
		ACCESS_RC_ANNOUNCE,
		ACCESS_RESEARCH,
		ACCESS_SEC_DOORS,
		ACCESS_WEAPONS,
		ACCESS_ENGINE
	)
	return ..()


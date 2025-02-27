// Something to remember when setting priorities: SS_TICKER runs before Normal, which runs before SS_BACKGROUND.
// Each group has its own priority bracket.
// SS_BACKGROUND handles high server load differently than Normal and SS_TICKER do.
// Higher priority also means a larger share of a given tick before sleep checks.

#define SS_PRIORITY_DEFAULT 50          // Default priority for all processes levels

// SS_TICKER
#define SS_PRIORITY_CHAT           100
#define SS_PRIORITY_THINK          90    // Datums thinking.
#define SS_PRIORITY_OVERLAYS       20
#define SS_PRIORITY_ICON_UPDATE    10 // Queued icon updates. Mostly used by APCs and tables.

// Normal
#define SS_PRIORITY_TICKER         100   // Gameticker.
#define SS_PRIORITY_MOB            95    // Mob Life().
#define SS_PRIORITY_MACHINERY      95    // Machinery + powernet ticks.
#define SS_PRIORITY_PHYSICS  	   94
#define SS_PRIORITY_AIR            80    // ZAS processing.
#define SS_PRIORITY_ALARM          20    // Alarm processing.
#define SS_PRIORITY_EVENT          20    // Event processing and queue handling.
#define SS_PRIORITY_STORYTELLER    20
#define SS_PRIORITY_RADIATION      20    // Radiation processing and cache updates.
#define SS_PRIORITY_SHUTTLE        20    // Shuttle movement.
#define SS_PRIORITY_CIRCUIT_COMP   20    // Processing circuit component do_work.
#define SS_PRIORITY_EXPLOSION      666   // Processing explosion stuff, abnormal number for abnormal stuff
#define SS_PRIORITY_VIRUSES        20    // Processing viruses life.
#define SS_PRIORITY_OPEN_SPACE     20    // Open turf updates.
#define SS_PRIORITY_AIRFLOW        15    // Object movement from ZAS airflow.
#define SS_PRIORITY_VOTE           10    // Vote management.
#define SS_PRIORITY_INACTIVITY     10    // Idle kicking.
#define SS_PRIORITY_SUPPLY         10    // Supply point accumulation.
#define SS_PRIORITY_TRADE          10    // Adds/removes traders.
#define SS_PRIORITY_PROJECTILES    10    // Projectile processing.

// SS_BACKGROUND
#define SS_PRIORITY_OBJECTS       60    // processing_objects processing.
#define SS_PRIORITY_PROCESSING    30    // Generic datum processor. Replaces objects processor.
#define SS_PRIORITY_PLANTS        30    // Spreading vine effects.
#define SS_PRIORITY_CIRCUIT       30    // Processing Circuit's ticks and all that.
#define SS_PRIORITY_CHAR_SETUP    25    // Writes player preferences to savefiles.
#define SS_PRIORITY_GARBAGE       20    // Garbage collection.
#define SS_PRIORITY_VINES         25    // Spreading vine effects.
#define SS_PRIORITY_NANO          20    // Updates to nanoui uis.
#define SS_PRIORITY_TGUI          20    // Updates to tgui uis.
#define SS_PRIORITY_TURF          20    // Radioactive walls/blob.
#define SS_PRIORITY_EVAC          20    // Processes the evac controller.
#define SS_PRIORITY_WIRELESS      10    // Wireless connection setup.
#define SS_PRIORITY_PING          10    // Client ping.
#define SS_PRIORITY_CONDUCTOR     05    // Conductor.


// Subsystem fire priority, from lowest to highest priority
// If the subsystem isn't listed here it's either DEFAULT or PROCESS (if it's a processing subsystem child)

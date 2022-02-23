# Theorycraft-plus

### This is and Extension of Theorycraft for the vanilla server V+
### I do not take any credits, credits goes to the original owner of this addon.

Put the Theorycraft folder in \World of Warcraft\Interface\AddOns By default only a few features are enabled, simply type in "/tc" to view the ui, and "/tc more" to list hidden commands.

To set up button text, choose two values to show on your tooltips. If the first is unavailable for that spell, it'll show the second.

Notes for v1.06.6:

If you want see tooltips and button text for spell in macros you should add line to top of your macro:

/run -- CastSpellByName("Spell Name")

or

/script -- CastSpellByName("Spell Name")

or

/script if nil then CastSpellByName("SPELLNAME"); end

or

/run -- cast("Spell Name")

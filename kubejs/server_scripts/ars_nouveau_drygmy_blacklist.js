ServerEvents.tags('entity_type', event => {
    const blacklistedMods = [
          'dungeonnowloading',
          'alexscaves',
          'cataclysm',
          'occultism'
                        ]

  blacklistedMods.forEach(modid => {
    // Dynamically creates a regex for each mod in the list
    event.add('ars_nouveau:drygmy_blacklist', new RegExp(`^${modid}:.+`))
    })
})

ServerEvents.recipes(event => {
  event.remove({ id: 'immersiveengineering:crafting/blastbrick' })

  event.shaped(
    Item.of('buddycards:buddysteel_deckbox', 1),
    [
      'NBN',
      'BCB',
      'NBN'
    ],
    {
      C: 'create:blaze_cake',
      B: 'forge:ingots/brick',
      N: 'minecraft:nether_brick'
    }
  )
})

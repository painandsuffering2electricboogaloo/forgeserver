ServerEvents.recipes(event => {
  event.remove({ id: 'immersive_weathering:cracked_bricks' })
  event.shaped(
    Item.of('immersive_weathering:cracked_bricks', 1),
    [
      '   ',
      'HB ',
      '   '
    ],
    {
      H: 'handcrafted:hammer',
      B: 'minecraft:bricks'
    }
  ).keepIngredient('handcrafted:hammer')
})

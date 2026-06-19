ServerEvents.recipes(event => {
  event.remove({ id: 'createdeco:cracked_red_bricks_from_bricks_smelting' })
  event.shaped(
    Item.of('createdeco:cracked_red_bricks', 1),
    [
      '  H',
      ' B ',
      '   '
    ],
    {
      H: 'handcrafted:hammer',
      B: 'minecraft:bricks'
    }
  ).keepIngredient('handcrafted:hammer')
})

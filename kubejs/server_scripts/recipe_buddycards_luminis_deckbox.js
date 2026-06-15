// [customrecipe] type=Shaped 3x3 | out=buddycards:luminis_deckbox | in=minecraft:orange_wool,minecraft:iron_ingot
ServerEvents.recipes(event => {
  event.shaped(
    Item.of('buddycards:luminis_deckbox', 1),
    [
      'A A',
      'A A',
      'ABA'
    ],
    {
      A: 'minecraft:orange_wool',
      B: 'minecraft:iron_ingot'
    }
  )
})

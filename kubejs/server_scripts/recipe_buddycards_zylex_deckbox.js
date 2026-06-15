// [customrecipe] type=Shaped 3x3 | out=buddycards:zylex_deckbox | in=minecraft:purple_wool,minecraft:iron_ingot
ServerEvents.recipes(event => {
  event.shaped(
    Item.of('buddycards:zylex_deckbox', 1),
    [
      'A A',
      'A A',
      'ABA'
    ],
    {
      A: 'minecraft:purple_wool',
      B: 'minecraft:iron_ingot'
    }
  )
})

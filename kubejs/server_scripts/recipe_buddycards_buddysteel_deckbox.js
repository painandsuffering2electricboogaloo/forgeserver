// [customrecipe] type=Shaped 3x3 | out=buddycards:buddysteel_deckbox | in=minecraft:light_blue_wool,create:iron_sheet
ServerEvents.recipes(event => {
  event.shaped(
    Item.of('buddycards:buddysteel_deckbox', 1),
    [
      'A A',
      'A A',
      'ABA'
    ],
    {
      A: 'minecraft:light_blue_wool',
      B: 'create:iron_sheet'
    }
  )
})

ServerEvents.recipes(event => {
  event.remove({ id: 'computercraft:computer_normal' })
  
  event.shaped(
    Item.of('computercraft:computer_normal', 1),
    [
      'SSS',
      'SCS',
      'SGS'
    ],
    {
      P: '#forge:ingots/steel',
      C: 'computercraft:computer_normal',
      G: '#forge:glass_panes'
    }
  )
})

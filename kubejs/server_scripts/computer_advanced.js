ServerEvents.recipes(event => {
  event.remove({ id: 'computercraft:computer_advanced' })
  event.remove({ id: 'computercraft:computer_advanced_upgrade' })
  
  event.shaped(
    Item.of('computercraft:computer_advanced', 1),
    [
      'PPP',
      'PCP',
      'PQP'
    ],
    {
      P: 'forge:ingots/plastic',
      C: 'computercraft:computer_normal',
      Q: 'tfmg:circuit_board'
    }
  )

    event.shaped(
    Item.of('computercraft:computer_advanced', 1),
    [
      'PPP',
      'PCP',
      'PQP'
    ],
    {
      P: 'destro:plastics/rigid',
      C: 'computercraft:computer_normal',
      Q: 'tfmg:circuit_board'
    }
  )
})

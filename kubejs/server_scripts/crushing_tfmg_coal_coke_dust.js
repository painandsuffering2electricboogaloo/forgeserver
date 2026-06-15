// [customrecipe] type=Crushing | out=tfmg:coal_coke_dust | in=tfmg:coal_coke | time=200
ServerEvents.recipes(event => {
  event.recipes.create.crushing(
    [
      'tfmg:coal_coke_dust'
    ],
    'tfmg:coal_coke'
  ).processingTime(200)
})

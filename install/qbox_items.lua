-- Qbox usually uses ox_inventory. Add these entries inside ox_inventory/data/items.lua.
-- Keep consume = 0. tdev_kayak2 removes and returns items server-side.

['kayak'] = {
  label = 'Kayak',
  weight = 12000,
  stack = true,
  close = true,
  consume = 0,
  description = 'A portable kayak.',
  client = {
    export = 'tdev_kayak2.useKayak'
  }
},

['kayak_paddle'] = {
  label = 'Kayak Paddle',
  weight = 1500,
  stack = true,
  close = true,
  consume = 0,
  description = 'A paddle used to drive a kayak.',
  client = {
    export = 'tdev_kayak2.useKayakPaddle'
  }
},

Config = {}

Config.Debug = false

-- auto, esx, qb, qbox, standalone
Config.Framework = 'auto'

-- auto, ox_inventory, framework
Config.Inventory = 'auto'

Config.Items = {
  kayak = 'kayak',
  paddle = 'kayak_paddle'
}

Config.Commands = {
  recover = 'kayakrecover',
  reset = 'kayakreset',
  useKayak = '', -- optional testing command, example: 'kayak'
  usePaddle = '' -- optional testing command, example: 'kayakpaddle'
}

Config.Controls = {
  drop = 246, -- Y
  mount = 23, -- F / INPUT_ENTER
  exit = 73, -- X
  pickup = 38, -- E, only while not mounted
  paddle = { 32, 21, 201 }, -- W / Left Shift / Enter
  reverse = { 33, 203 }, -- S / Backspace
  steeringAxis = 30 -- A/D
}

Config.Carry = {
  model = 'prop_kayak_01',
  bone = 24818, -- SKEL_Spine2
  offset = vector3(0.05, -0.18, 0.12),
  rotation = vector3(90.0, 88.0, 90.0),
  disableControls = false,
  anim = {
    enabled = false,
    dict = 'anim@heists@box_carry@',
    name = 'idle',
    flag = 49,
    checkIntervalMs = 900
  }
}

Config.Drop = {
  forwardDistance = 2.1,
  waterOffset = 0.12,
  probeHeight = 8.0,
  retryFromPed = true
}

Config.Kayak = {
  model = 'prop_kayak_01',
  fallbackModels = {},
  vehicleModel = 'seashark',
  enterDistance = 2.8,
  pickupDistance = 2.2,
  rotationSpeed = 0.48,
  paddlePower = 3.35,
  forwardImpulse = 0.021,
  reverseImpulse = 0.034,
  maxSpeed = 6.8,
  strokeTicks = 70,
  mountGraceTicks = 45,
  unmountedFreezeVelocity = true,

  attach = {
    visualToVehicle = {
      offset = vector3(0.0, 0.0, 0.0),
      rotation = vector3(0.0, 0.0, 90.0)
    },
    pedToKayak = {
      offset = vector3(0.0, 0.0, 0.10),
      rotation = vector3(0.0, 0.0, 270.0)
    }
  }
}

Config.Paddle = {
  model = 'p_banknote_s',
  streamedModels = {
    p_banknote_s = true
  },
  attach = {
    bone = 36029, -- PH_R_Hand
    offset = vector3(0.05, -0.01, 0.02),
    rotation = vector3(80.0, 130.0, 70.0)
  }
}

Config.Animation = {
  blendIn = 2.0,
  blendOut = -2.0,
  idle = {
    dict = 'anim@veh@boat@longfin@ds@base',
    name = 'sit_idle',
    flag = 1,
    fallbacks = {
      {
        dict = 'anim@veh@boat@speed@fds@base',
        name = 'sit_idle',
        flag = 1
      }
    }
  },
  paddle = {
    dict = 'anim@veh@boat@longfin@ds@base',
    name = 'steer_left',
    flag = 49,
    fallbacks = {
      {
        dict = 'anim@veh@boat@speed@fds@base',
        name = 'steer_left',
        flag = 49
      }
    }
  }
}

Config.Safety = {
  actionCooldownMs = 700,
  serverMaxDropDistance = 8.0,
  maxKayakDistance = 180.0,
  forceReturnOnDeath = true,
  forceReturnWhenKayakMissing = true,
  cleanupPendingItemsOnResourceStop = true,
  preventCarryInVehicle = true
}

Config.Text = {
  noKayakItem = 'You need a kayak.',
  noPaddleItem = 'You need a kayak paddle.',
  alreadyActive = 'You already have a kayak active.',
  carryStarted = 'Kayak ready.',
  carryPrompt = '[Y] Drop over water | [X] Cancel',
  dropNeedWater = 'Drop the kayak over water.',
  kayakDropped = 'Kayak dropped. Press F near it to get in.',
  kayakMountPrompt = '[F] Get in kayak',
  kayakPickupPrompt = '[E] Pick up kayak',
  kayakNeedPaddlePrompt = 'Use your kayak paddle item to start driving | [X] Exit',
  kayakRidePrompt = '[W] Paddle | [S] Reverse | [A/D] Steer | [X] Exit',
  paddleEquipped = 'Paddle equipped. You can drive now.',
  paddleAlready = 'Your paddle is already in your hands.',
  kayakReturned = 'Kayak items returned to your inventory.',
  kayakSpawnFailed = 'Kayak could not be placed here.',
  paddleSpawnFailed = 'Paddle could not be equipped.',
  inventoryFull = 'Your inventory is full. Free space and use /%s.',
  recovered = 'Recovered pending kayak items.',
  nothingToRecover = 'No pending kayak items to recover.',
  cancelled = 'Kayak session cleaned up.',
  tooFar = 'You moved too far from your kayak.',
  useKayakFirst = 'Use your kayak item first.',
  mountFirst = 'Get in the kayak before using the paddle item.'
}

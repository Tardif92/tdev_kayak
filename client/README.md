# tdev_kayak2

Standalone item-based kayaking resource for FiveM.

## Compatibility

- ESX
- QBCore
- Qbox
- ox_inventory
- OneSync enabled

## Install

1. Put `tdev_kayak2` in your resources folder.
2. Add `ensure tdev_kayak2` to `server.cfg`.
3. Add the two items:
   - ox_inventory: copy `install/ox_inventory_items.lua` into `ox_inventory/data/items.lua`.
   - Qbox: copy `install/qbox_items.lua` into your ox_inventory item data.
   - QBCore: copy `install/qb-core_items.lua` into `qb-core/shared/items.lua`.
   - ESX: run `install/esx_items.sql`.
4. Give players:
   - `kayak`
   - `kayak_paddle`

## Player Flow

1. Use `kayak`.
2. The player carries the kayak and can walk around.
3. Press `Y` over water to drop the kayak.
4. Press `F` near the kayak to get in.
5. Use `kayak_paddle` while mounted to put the paddle in hand and enable movement.
6. Use `W`, `S`, and `A/D` to paddle and steer.
7. Press `X` while mounted to exit and return removed items automatically.

## Admin / Recovery

- `/kayakreset` cleans the current local session and returns removed items.
- `/kayakrecover` retries any item return that failed because the inventory was full.

## Safety Notes

- Items are removed only on server-approved actions:
  - Kayak item: removed when the kayak is dropped into water.
  - Paddle item: removed when the mounted player equips the paddle.
- Items are returned only if the server previously removed them.
- The server validates drop distance from the player before approving placement.
- Client cleanup runs on player death, missing kayak entity, excessive distance, reset, and resource stop.
- ox_inventory item definitions must use `consume = 0`; the resource handles item removal itself.

## Configuration

Edit `config.lua` for framework/inventory detection, item names, keybinds, attach offsets, model names, movement tuning, prompts, and safety limits.

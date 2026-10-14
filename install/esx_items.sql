INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
  ('kayak', 'Kayak', 12000, 0, 1),
  ('kayak_paddle', 'Kayak Paddle', 1500, 0, 1)
ON DUPLICATE KEY UPDATE
  `label` = VALUES(`label`),
  `weight` = VALUES(`weight`),
  `rare` = VALUES(`rare`),
  `can_remove` = VALUES(`can_remove`);
